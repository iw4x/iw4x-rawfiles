/************************************************/
/*         Weather written by momo5502          */
/************************************************/

#include common_scripts\utility;
#include common_scripts\_createfx;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

main()
{
	level waittill("village_start_weather");
	
	initDrips();
	initSplash();
	initRains();
	initNoises();
	
	initFog();
	initFog_A();
	
	level.FxType = 5;
	level.FXs = [];
	
	level.soundfx = spawn( "script_model", (1397.66, 3142.13, 56.1417) );
	level.soundfx setmodel( "tag_origin" );
	
	thread randomWeather();
}

initDrips()
{
	level.Drips = [];
	
	level.Drips[ 0 ] = (1394.02, 3146.39, 155.871);
	level.Drips[ 1 ] = (1365.65, 3135.42, 155.872);
	level.Drips[ 2 ] = (1416.53, 3155.25, 155.875);
	level.Drips[ 3 ] = (1394.02, 3146.39, 155.871);
	level.Drips[ 4 ] = (1365.65, 3135.42, 155.872);
	level.Drips[ 5 ] = (1416.53, 3155.25, 155.875);
	level.Drips[ 6 ] = (1394.02, 3146.39, 155.871);
	level.Drips[ 7 ] = (1365.65, 3135.42, 155.872);
	level.Drips[ 8 ] = (1416.53, 3155.25, 155.875);
	level.Drips[ 9 ] = (737.61, 838.003, 152.859);
}

initSplash()
{
	level.Splashes = [];
	
	level.Splashes[ level.Splashes.size ] = (2491.85, 1781.36, 43.7935);
	level.Splashes[ level.Splashes.size ] = (2221.4, 2712.15, 48.125);
	level.Splashes[ level.Splashes.size ] = (1784.27, 2916.82, 48.125);
	level.Splashes[ level.Splashes.size ] = (1092.6, 1942.39, 48.6405);
	level.Splashes[ level.Splashes.size ] = (904.935, 1482.94, 47.0227);
	level.Splashes[ level.Splashes.size ] = (1215.19, 764.034, 48.125);
	level.Splashes[ level.Splashes.size ] = (1439.34, 585.539, 48.125);
	level.Splashes[ level.Splashes.size ] = (1499.84, 933.378, 48.125);
	level.Splashes[ level.Splashes.size ] = (961.371, 1721.81, 36.4135);
	level.Splashes[ level.Splashes.size ] = (1193.13, 2438.28, 47.6818);
	level.Splashes[ level.Splashes.size ] = (1321.03, 2090.15, 48.125);
	level.Splashes[ level.Splashes.size ] = (1642.18, 2106.09, 48.125);
	level.Splashes[ level.Splashes.size ] = (1861.5, 2282.31, 48.125);
	level.Splashes[ level.Splashes.size ] = (1804.62, 2531.63, 48.125);
	level.Splashes[ level.Splashes.size ] = (1630.93, 2816.67, 48.125);
	level.Splashes[ level.Splashes.size ] = (1671.01, 3081.06, 48.125);
	level.Splashes[ level.Splashes.size ] = (1384.3, 2944.39, 48.125);
	level.Splashes[ level.Splashes.size ] = (1103.81, 2737.35, 48.125);
	level.Splashes[ level.Splashes.size ] = (2051.52, 2980.33, 48.125);
	level.Splashes[ level.Splashes.size ] = (2083.36, 2286.2, 48.125);
	level.Splashes[ level.Splashes.size ] = (2628.26, 1849.95, 51.8756);
	level.Splashes[ level.Splashes.size ] = (2496.96, 2112.6, 48.125);
	level.Splashes[ level.Splashes.size ] = (2713.97, 2216.31, 48.125);
	level.Splashes[ level.Splashes.size ] = (2809.76, 2479.41, 48.125);
	level.Splashes[ level.Splashes.size ] = (2309.78, 2443.11, 48.125);
	level.Splashes[ level.Splashes.size ] = (1056.33, 1062.1, 48.125);
	level.Splashes[ level.Splashes.size ] = (811.687, 700.835, 48.6218);
	level.Splashes[ level.Splashes.size ] = (354.261, 1669.95, 56.9991);
	level.Splashes[ level.Splashes.size ] = (537.104, 2067.5, 49.8029);
	level.Splashes[ level.Splashes.size ] = (560.938, 2519.57, 62.4628);
	level.Splashes[ level.Splashes.size ] = (958.897, 2210.97, 56.2892);
	level.Splashes[ level.Splashes.size ] = (1371.47, 2710.95, 48.125);
	level.Splashes[ level.Splashes.size ] = (2235.22, 1858.64, 47.7011);
	level.Splashes[ level.Splashes.size ] = (2465.25, 2971.7, 48.125);
	level.Splashes[ level.Splashes.size ] = (3286.19, 2945.31, 49.5356);
	level.Splashes[ level.Splashes.size ] = (2911.99, 2824.25, 48.125);
	level.Splashes[ level.Splashes.size ] = (2763.72, 2928.75, 48.125);
	level.Splashes[ level.Splashes.size ] = (2751.46, 3095.27, 48.125);
	level.Splashes[ level.Splashes.size ] = (2771.63, 2950.25, 48.125);
	level.Splashes[ level.Splashes.size ] = (2749.46, 1482.4, 73.4061);
	level.Splashes[ level.Splashes.size ] = (2476.87, 1365.42, 61.0747);
	level.Splashes[ level.Splashes.size ] = (975.505, 1757.56, 38.8804);
	level.Splashes[ level.Splashes.size ] = (1102.17, 1654.96, 51.4723);
	level.Splashes[ level.Splashes.size ] = (900.29, 1979.95, 58.1844);
	level.Splashes[ level.Splashes.size ] = (1459.9, 2725.41, 200.125);
	level.Splashes[ level.Splashes.size ] = (1557.67, 2458.37, 200.125);
	level.Splashes[ level.Splashes.size ] = (2778.25, 1350.74, 86.125);
	level.Splashes[ level.Splashes.size ] = (1200.61, 977.724, 50.0881);
	level.Splashes[ level.Splashes.size ] = (4072.1, 4400.43, -33.0761);
	level.Splashes[ level.Splashes.size ] = (5402.7, 5624.1, 35.0275);
	level.Splashes[ level.Splashes.size ] = (5863.43, 6279.28, -9.875);
	level.Splashes[ level.Splashes.size ] = (6626.52, 6632.35, 32.125);
	level.Splashes[ level.Splashes.size ] = (8485.53, 6829.77, 32.125);
	level.Splashes[ level.Splashes.size ] = (7540.74, 8508.53, 21.0811);
	level.Splashes[ level.Splashes.size ] = (5576.96, 5413.44, 57.337);
	level.Splashes[ level.Splashes.size ] = (889.164, -819.958, 112.664);
	level.Splashes[ level.Splashes.size ] = (1059.29, -2588.45, 147.758);
	level.Splashes[ level.Splashes.size ] = (2022.01, -3964.69, 19.2031);
	level.Splashes[ level.Splashes.size ] = (2695.6, -4787.36, -22.3511);
	level.Splashes[ level.Splashes.size ] = (3283.92, -5899.21, -20.3506);
	level.Splashes[ level.Splashes.size ] = (3142.61, -8011.33, 199.01);
	level.Splashes[ level.Splashes.size ] = (2241.88, -8500.55, 290.77);
	level.Splashes[ level.Splashes.size ] = (2662.24, -8294.52, 244.641);
	level.Splashes[ level.Splashes.size ] = (6563.17, 7447.62, 32.125);
	level.Splashes[ level.Splashes.size ] = (6864.86, 7330.22, 32.125);
	level.Splashes[ level.Splashes.size ] = (7264.26, 7318.64, 32.125);
	level.Splashes[ level.Splashes.size ] = (7494.27, 7609.68, 32.125);
	level.Splashes[ level.Splashes.size ] = (7810.41, 7977.32, 32.125);
	level.Splashes[ level.Splashes.size ] = (7932.96, 8233.96, 32.125);
	level.Splashes[ level.Splashes.size ] = (8175.53, 6958.91, 33.125);
	level.Splashes[ level.Splashes.size ] = (8824.76, 7185.87, 32.1245);
	level.Splashes[ level.Splashes.size ] = (8387.24, 7342.39, 32.1245);
	level.Splashes[ level.Splashes.size ] = (7193.07, 6218.34, 32.125);
	level.Splashes[ level.Splashes.size ] = (7452.77, 6836.35, 32.125);
}

initRains()
{
	level.Rains = [];

	level.Rains[ 0 ] = (2735.35, -7239.37, 870.41);
	level.Rains[ 1 ] = (993.369, -1807.85, 843.46);
	level.Rains[ 2 ] = (1363.36, -4570.94, 937.27);
	level.Rains[ 3 ] = (7510.42, 7192.63, 908.21);
	level.Rains[ 4 ] = (1266.38, 1253.96, 882.74);
	level.Rains[ 5 ] = (2676.99, 2828.09, 876.66);
	level.Rains[ 6 ] = (1164.1, 866.845, 102.416);
}

initNoises()
{
	level.Noises = [];

	level.Noises[ 0 ] = (1729.04, 2859.05, 48.125);
	level.Noises[ 1 ] = (2279.99, 2526.9, 48.125);
	level.Noises[ 2 ] = (1239.7, 2091.38, 48.8212);
	level.Noises[ 3 ] = (1003.96, 849.651, 48.125);
}

initFog()
{
	level.Fog = [];
 	level.Fog[ level.Fog.size ] = ( 2340.18, -8500.27, 271.281 );
	level.Fog[ level.Fog.size ] = ( 2607.03, -8767.87, 303.632 );
	level.Fog[ level.Fog.size ] = ( 2445.96, -8448.35, 247.895 );
	level.Fog[ level.Fog.size ] = ( 2730.38, -8319.5, 228.436 );
	level.Fog[ level.Fog.size ] = ( 2528.44, -8345.1, 246.991 );
	level.Fog[ level.Fog.size ] = ( 2813.6, -8561.18, 276.992 );
	level.Fog[ level.Fog.size ] = ( 2579.73, -8153.93, 236.562 );
	level.Fog[ level.Fog.size ] = (1326.67, 2902.07, 90.4234);
	level.Fog[ level.Fog.size ] = (1249.32, 2203.13, 112.169);
	level.Fog[ level.Fog.size ] = (1250.72, 1984.63, 91.2697);
	level.Fog[ level.Fog.size ] = (874.072, 827.455, 109.491);
	level.Fog[ level.Fog.size ] = (2337.87, 2453.38, 103.78);
}

initFog_A()
{
	level.Fog_A = [];
	level.Fog_A[ level.Fog_A.size ] = ( 2611.66, -4016.83, -18 );
	level.Fog_A[ level.Fog_A.size ] = ( 2686.69, -4768.44, -18 );
	level.Fog_A[ level.Fog_A.size ] = ( 2574.56, -5101.76, -18 );
	level.Fog_A[ level.Fog_A.size ] = ( 737.339, -2932.52, 120.485 );
	level.Fog_A[ level.Fog_A.size ] = ( 1045.44, -2733.61, 131.067 );
	level.Fog_A[ level.Fog_A.size ] = ( 798.636, -2468.52, 159.229 );
	level.Fog_A[ level.Fog_A.size ] = ( 532.72, -2452.5, 137.038 );
	level.Fog_A[ level.Fog_A.size ] = ( 359.296, -2840.94, 112.157 );
	level.Fog_A[ level.Fog_A.size ] = ( 1157.37, -3030.34, 119.941 );
	level.Fog_A[ level.Fog_A.size ] = ( 594.127, -1570.28, 159.915 );
	level.Fog_A[ level.Fog_A.size ] = ( 1086.97, -1500.63, 149.245 );
	level.Fog_A[ level.Fog_A.size ] = ( 220.074, -1033.74, 133.88 );
	level.Fog_A[ level.Fog_A.size ] = ( 1237.1, -1143.83, 133.107 );
	level.Fog_A[ level.Fog_A.size ] = ( 634.094, -983.001, 119.293 );
	level.Fog_A[ level.Fog_A.size ] = ( 891.147, -1236.79, 124.383 );
	level.Fog_A[ level.Fog_A.size ] = ( 1055.2, -475.807, 92.034 );
	level.Fog_A[ level.Fog_A.size ] = ( 444.509, -709.626, 119.435 );
	level.Fog_A[ level.Fog_A.size ] = ( 856.828, -710.015, 105.769 );
	level.Fog_A[ level.Fog_A.size ] = ( 1196.72, -2401.62, 157.596 );
	level.Fog_A[ level.Fog_A.size ] = ( 3355.35, -4930.4, 47.4507 );
	level.Fog_A[ level.Fog_A.size ] = ( 3492.81, 3662.36, 58.585 );
	level.Fog_A[ level.Fog_A.size ] = ( 3595.77, 2998.96, 59.8827 );
	level.Fog_A[ level.Fog_A.size ] = ( 6019.27, 6138.77, 10.4936 );
	level.Fog_A[ level.Fog_A.size ] = ( 6362.4, 6461.85, 33.5 );
	level.Fog_A[ level.Fog_A.size ] = ( 6076.19, 5853.46, 14.7122 );
	level.Fog_A[ level.Fog_A.size ] = ( 7235.82, 6290.35, 32 );
	level.Fog_A[ level.Fog_A.size ] = ( 5765.83, 9019.17, 124.173 );
	level.Fog_A[ level.Fog_A.size ] = ( 5899.88, 9225.82, 139.265 );
	level.Fog_A[ level.Fog_A.size ] = ( 5973.14, 8474.09, 107.744 );
	level.Fog_A[ level.Fog_A.size ] = ( 5909.58, 7702.95, 25 );
	level.Fog_A[ level.Fog_A.size ] = ( 7653.43, 9014.94, 46.1127 );
	level.Fog_A[ level.Fog_A.size ] = ( 2421.5, 1936.32, 71.2253 );
	level.Fog_A[ level.Fog_A.size ] = ( 2621.13, 1832.47, 99.4275 );
	level.Fog_A[ level.Fog_A.size ] = ( 5966.24, 6407.13, 14.015 );
	level.Fog_A[ level.Fog_A.size ] = ( 5730.06, 7422.93, 44.75 );
	level.Fog_A[ level.Fog_A.size ] = ( 6501.46, 8757.82, 24 );
	level.Fog_A[ level.Fog_A.size ] = ( 6388.53, 8115.48, 75.9441 );
	level.Fog_A[ level.Fog_A.size ] = ( 6199.6, 7852.87, 34.896 );
	level.Fog_A[ level.Fog_A.size ] = ( 6616.86, 8408.87, 90.5708 );
	level.Fog_A[ level.Fog_A.size ] = ( 5894.96, 8697.57, 110.698 );	
	level.Fog_A[ level.Fog_A.size ] = ( 6102.05, 6423.88, 32.3473 );
	level.Fog_A[ level.Fog_A.size ] = ( 5895.68, 6634.48, 30.0596 );
	level.Fog_A[ level.Fog_A.size ] = ( 6247.8, 5410.88, 28.498 );
	level.Fog_A[ level.Fog_A.size ] = ( 6398.65, 8364.53, 86.5132 );
	level.Fog_A[ level.Fog_A.size ] = ( 6665.68, 8894, 24 );
	level.Fog_A[ level.Fog_A.size ] = ( 6487, 9001.38, 24 );
	level.Fog_A[ level.Fog_A.size ] = ( 6154.11, 9073.74, 69.3148 );
	level.Fog_A[ level.Fog_A.size ] = ( 3635.68, 3804.13, 58.8301 );
	level.Fog_A[ level.Fog_A.size ] = ( 3621.47, 2815.96, 61.1578 );
	level.Fog_A[ level.Fog_A.size ] = ( 2027.09, 2823.92, 48 );
	level.Fog_A[ level.Fog_A.size ] = ( 2267.12, 2527.33, 48 );
	level.Fog_A[ level.Fog_A.size ] = ( 2471.2, 2175.27, 48 );
	level.Fog_A[ level.Fog_A.size ] = ( 1734.73, 2830.96, 48 );
	level.Fog_A[ level.Fog_A.size ] = ( 1470.25, 3010.36, 48 );
	level.Fog_A[ level.Fog_A.size ] = ( 1057.47, 1625.66, 49.1076 );
	level.Fog_A[ level.Fog_A.size ] = ( 1036.68, 1861.01, 48 );
	level.Fog_A[ level.Fog_A.size ] = ( 1297.44, 910.321, 48 );
	level.Fog_A[ level.Fog_A.size ] = ( 1500.01, 712.875, 48 );
	level.Fog_A[ level.Fog_A.size ] = ( 2411.47, -5283.1, -18 );
	level.Fog_A[ level.Fog_A.size ] = ( 4097.94, 4861.74, 2.99878 );
	level.Fog_A[ level.Fog_A.size ] = ( 4457.4, 4920.69, 66.9258 );
	level.Fog_A[ level.Fog_A.size ] = ( 4350.24, 5066.04, 43.9379 );
	level.Fog_A[ level.Fog_A.size ] = ( 4541.56, 5376.24, 70.3374 );
	level.Fog_A[ level.Fog_A.size ] = ( 4705.06, 5080.77, 57.6158 );
	level.Fog_A[ level.Fog_A.size ] = ( 4889.98, 5333.01, 47.01 ); 	
	level.Fog_A[ level.Fog_A.size ] = ( 5191.74, 5124.35, 32.3675 );
	level.Fog_A[ level.Fog_A.size ] = ( 4932.62, 5743.27, 46.4739 );
	level.Fog_A[ level.Fog_A.size ] = ( 5260.01, 5960.01, 37.5239 );
	level.Fog_A[ level.Fog_A.size ] = ( 5539.42, 5504.98, 42.2612 );
	level.Fog_A[ level.Fog_A.size ] = ( 5260.04, 5658.69, 40.7657 );
	level.Fog_A[ level.Fog_A.size ] = ( 5635.73, 5735.85, 46.6498 );
	level.Fog_A[ level.Fog_A.size ] = ( 5527.39, 5982.94, 45.2672 );
	level.Fog_A[ level.Fog_A.size ] = ( 4591.93, 5727.76, 58.976 );
	level.Fog_A[ level.Fog_A.size ] = ( 5862.54, 5357.17, 39.2073 );
	level.Fog_A[ level.Fog_A.size ] = ( 6068.67, 5565.78, 2 );
	level.Fog_A[ level.Fog_A.size ] = ( 6386.02, 6638.15, 32 );
	level.Fog_A[ level.Fog_A.size ] = ( 5606.75, 8782.74, 108.574 );
	level.Fog_A[ level.Fog_A.size ] = ( 5513.95, 8237.25, 88.3965 );
	level.Fog_A[ level.Fog_A.size ] = ( 4955.19, 7475.15, 79.7067 );
	level.Fog_A[ level.Fog_A.size ] = ( 4864.25, 7854.5, 104.362 );
	level.Fog_A[ level.Fog_A.size ] = ( 5063.43, 7685.32, 66.3038 );
	level.Fog_A[ level.Fog_A.size ] = ( 4779.86, 7682.39, 112.231 );
	level.Fog_A[ level.Fog_A.size ] = ( 4539.42, 7806.34, 138.596 );
	level.Fog_A[ level.Fog_A.size ] = ( 4623.05, 8053.03, 148.074 );
	level.Fog_A[ level.Fog_A.size ] = ( 4737.26, 8254.46, 137.169 );
	level.Fog_A[ level.Fog_A.size ] = ( 4351.42, 8234.44, 181.423 );
	level.Fog_A[ level.Fog_A.size ] = ( 4341.18, 8465.62, 175.27 );
	level.Fog_A[ level.Fog_A.size ] = ( 4654.65, 8616.88, 166.751 );
	level.Fog_A[ level.Fog_A.size ] = ( 5060.93, 6981.06, 64.4226 );
	level.Fog_A[ level.Fog_A.size ] = ( 4617.92, 6692.1, 92.1133 );
	level.Fog_A[ level.Fog_A.size ] = ( 4309.67, 6463.38, 131.804 );
	level.Fog_A[ level.Fog_A.size ] = ( 7546.55, 8386.77, 27 );
	level.Fog_A[ level.Fog_A.size ] = ( 7817.82, 8513.18, 27 );
	level.Fog_A[ level.Fog_A.size ] = ( 8181.45, 8599.65, 36.3936 );
	level.Fog_A[ level.Fog_A.size ] = ( 8562.12, 8775.54, 55.5653 );
	level.Fog_A[ level.Fog_A.size ] = ( 7706.02, 8720.03, 28.4469 );
	level.Fog_A[ level.Fog_A.size ] = ( 8307.68, 8388.6, 38.25 );
	level.Fog_A[ level.Fog_A.size ] = ( 7703.63, 8217.21, 36.7309 );
	level.Fog_A[ level.Fog_A.size ] = ( 8732.14, 8670.03, 48.4463 );
	level.Fog_A[ level.Fog_A.size ] = (2590.81, 1828.48, 105.102);
	level.Fog_A[ level.Fog_A.size ] = (1087.23, 2828.19, 93.3798);
	level.Fog_A[ level.Fog_A.size ] = (1125.49, 2485.46, 101.832);
 	level.Fog_A[ level.Fog_A.size ] = (1621.89, 2169.77, 98.5081);
	level.Fog_A[ level.Fog_A.size ] = (944.01, 1110.04, 99.8467);
}

randomWeather()
{
	while ( true )
	{
		switch( rollWeather( 3 ) )
		{
			case 0:
				start_Normal();
				break;
			
			case 1:
				start_Fog();
				break;
			
			case 2:
				start_Rain();
				break;
		}
		
		wait randomMinuteRange( 2, 5);
	}
}

setup_Rain()
{		
	foreach(splash in level.Splashes)
		level.FXs[ level.FXs.size ] = SpawnFx( level._effect[ "rain_splash_lite_128x128" ], splash, anglestoforward ((270,0,0)), anglestoup((270,0,0)) );
	
	foreach(drip in level.Drips)
		level.FXs[ level.FXs.size ] = SpawnFx( level._effect[ "drips_fast" ], drip, anglestoforward (( 270, 357.614, 90.386 )), anglestoup(( 270, 357.614, 90.386 )) );
	
	foreach(rain in level.Rains)
		level.FXs[ level.FXs.size ] = SpawnFx( level._effect[ "rain_mp_storm" ], rain, anglestoforward ((270,0,0)), anglestoup((270,0,0)) );
	
	foreach(noise in level.Noises)
		level.FXs[ level.FXs.size ] = SpawnFx( level._effect[ "rain_noise_splashes" ], noise, anglestoforward ((270,0,0)), anglestoup((270,0,0)) );
	
	level.FXs[ level.FXs.size ] = SpawnFx( level._effect[ "lightning" ], (-450.814, 1114.3, 1134.94) , anglestoforward ((270,0,0)), anglestoup((270,0,0)) );
	
	level.FXs[ level.FXs.size ] = SpawnFx( level._effect[ "waterfall_drainage_mp" ], (1395.47, 3147.4, 155.855) , anglestoforward (( 88, -68.7933, -180 )), anglestoup(( 88, -68.7933, -180 )) );
	
	level.FXs[ level.FXs.size ] = SpawnFx( level._effect[ "waterfall_drainage_splash_mp" ], (1397.94, 3136.79, 48.125), anglestoforward (( 270, 0, -110 )), anglestoup(( 270, 0, -110 )) );
}

setup_Fog()
{
	foreach(fog in level.Fog)
		level.FXs[ level.FXs.size ] = SpawnFx( level._effect[ "fog_hunted" ], fog, anglestoforward ((270,0,0)), anglestoup((270,0,0)) );
	
	foreach(fog_a in level.Fog_A)
		level.FXs[ level.FXs.size ] = SpawnFx( level._effect[ "fog_hunted_a" ], fog_a, anglestoforward ((270,0,0)), anglestoup((270,0,0)) );
}

start_Rain()
{
	level.FxType = 2;
	
	stop_Fx();
	level.FXs = [];
	setup_Rain();
	start_Fx();
		
	ambientPlay( "ambient_mp_rain", 2 );	
	setExpFog( 300, 4000, 0.5, 0.5, 0.5, 1, 3 );
}

start_Fog()
{
	level.FxType = 1;
	
	stop_Fx();
	level.FXs = [];
	setup_Fog();
	start_Fx();

	ambientPlay( "ambient_mp_rural", 2 );
	setExpFog( 300, 1500, 0.5, 0.5, 0.5, 1, 3 );
}

start_Normal()
{
	level.FxType = 0;
	
	stop_Fx();

	ambientPlay( "ambient_mp_rural", 2 );
	setExpFog( 300, 4000, 0.5, 0.5, 0.5, 1, 3 );
}

start_Fx()
{
	foreach(fx in level.FXs)
		TriggerFX( fx, -15 );
	
	if( level.FxType == 2 || level.FxType == 4 )
		level.soundfx PlayLoopSound("emt_water_drain_flowing");
}

stop_Fx()
{
	foreach(fx in level.FXs)
		fx delete();
		
	level.soundfx StopLoopSound();
}

rollWeather( i )
{
	random = randomInteger( i );
	
	while( level.FxType == random )
	{
		wait 0.01;
		random = randomInteger( i );
	}
	
	return random;
}

randomInteger( i )
{
	return randomInt( 65535 ) % i;
}

randomMinuteRange(start, end)
{
	return ( ( randomInt( 65535 ) % ( ( end * 60 ) - ( start * 60 ) ) ) + ( start * 60 ) );
}