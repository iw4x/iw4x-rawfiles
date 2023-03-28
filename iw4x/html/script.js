window.address = location.hostname + (location.port ? ':' + location.port : '');
window.origin = location.protocol + '//' + window.address;

function toBool (data)
{
    if (data > 0)
    {
        return "Yes";
    }

    return "No";
}

function getFfType (data)
{
    switch(data)
    {
        case 0:
            return "Disabled";
        case 1:
            return "Enabled";
        case 2:
            return "Reflected";
        case 3:
            return "Shared";
        default:
            return "Disabled";
    }
}

function getServerInfo(status, countPlayers)
{
    var mod = status.fs_game;

    if (!mod)
    {
        mod = "";
    }

    var row = "<tr>";
    row += "<td><b>Map:</b> " + status.mapname + "</td><td><b>Gametype:</b> " + status.g_gametype + "</td><td><b>Players:</b> " + countPlayers + "/" + status.sv_maxclients + "</td>";
    row += "</tr><tr>"
    row += "<td><b>Mod:</b> " + mod.replace(/^mods\//g, "") + "</td><td><b>Security Level:</b> " + status.sv_securityLevel + "</td><td><b>Password Protected:</b> " + toBool(status.isPrivate) + "</td>";
    row += "</tr><tr>"
    row += "<td><b>Hardcore Mode:</b> " + toBool(status.g_hardcore) + "</td><td><b>KillCam:</b> " + toBool(status.scr_game_allowkillcam) + "</td><td><b>Friendly Fire:</b> " + getFfType(status.scr_team_fftype) + "</td>";
    row += "</tr>"

    $("#serverinfo").append(row);
}

function buildPlayerList(players)
{
    for (var i = 0; i < players.length; ++i)
    {
        var row = "<tr>";
        row += "<td>" + players[i].name + "</td>";
        row += "<td>" + players[i].test_client + "</td>";
        row += "<td>" + players[i].score + "</td>";
        row += "<td>" + players[i].ping + "</td>";
        row += "</tr>";

        $("#players").append(row);
    }

    if (players.length == 0)
    {
        $("#playertable").fadeOut(1);
    }
}

function buildPage(data)
{
    // Get dvar sv_hostname and remove color codes
    var hostname = (data["status"]["sv_hostname"]).replace(/\^[0-9:;c]/g, "");

    // Set title
    document.title = hostname
    $("#servername").text(document.title);

    getServerInfo(data["status"], data["players"].length);
    buildPlayerList(data["players"]);

    $('body').fadeIn(300);
}

$(document).ready(function()
{
	$("#connect").click(function()
	{
		location.replace("iw4x://" + window.address);
	});
	
    $.getJSON(origin + "/info", function(data)
    {
        console.log(data);
        setTimeout(buildPage.bind(undefined, data), 10);
    }).fail(function()
    {
        alert("An error occured while updating the server information!");
    });

    $("#footer").click(function()
    {
        location.replace("https://xlabs.dev");
    });
});
