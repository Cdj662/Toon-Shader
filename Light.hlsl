void LightInformation_float(out float3 Direction, out float3 Color, out float Attenuation)
{
#ifdef SHADERGRAPH_PREVIEW
	Direction = float3(-0.2, 0.2, -0.2);
	Color = float3(1, 1, 1);
	Attenuation = 0.6;
#else
	Light light = Light();
	Direction = light.direction;
	Attenuation = light.distanceAttenuation;
	Color = light.color;
#endif
}
