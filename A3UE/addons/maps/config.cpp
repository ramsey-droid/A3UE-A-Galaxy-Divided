#include "script_component.hpp"

class CfgPatches 
{
    class ADDON 
    {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {QDOUBLES(PREFIX,core)};
        author = AUTHOR;
        authors[] = { AUTHORS };
        authorUrl = "";
        VERSION_CONFIG;
    };
};

class A3A 
{ //global overwrite or inclussion of new navGrids or map info
    #include "mapInfo.hpp"
    #include "NavGrid.hpp"
};

class CfgMissions
{
    class MPMissions
    {
        class Antistasi_Altis
        {
            briefingName = $STR_A3UE_maps_Altis_mapname;
            directory = QCPATHTO(Antistasi_Altis.Altis);
        };
        class Antistasi_Other_Altis
        {
            briefingName = $STR_A3UE_maps_Other_Altis_mapname;
            directory = QCPATHTO(Antistasi_Other_Altis.Altis);
        };
        class SOB_Madrigal_Antistasi
        {
            briefingName = $STR_A3UE_maps_Madrigal_mapname;
            directory = QCPATHTO(SOB_Madrigal_Antistasi.OPTRE_Madrigal);
        };
        class SOB_Abramia_Antistasi
        {
            briefingName = $STR_A3UE_maps_Abramia_mapname;
            directory = QCPATHTO(SOB_abramia_Antistasi.abramia);
        };
        class SOB_Vt7_Antistasi
        {
            briefingName = $STR_A3UE_maps_Virolahti_mapname;
            directory = QCPATHTO(SOB_Virolahti_Antistasi.vt7);
        };
        class SOB_sara_Antistasi
        {
            briefingName = $STR_A3UE_maps_sara_mapname;
            directory = QCPATHTO(SOB_sahrani_Antistasi.sara);
        };
        class SOB_lythium_Antistasi
        {
            briefingName = $STR_A3UE_maps_Lythium_mapname;
            directory = QCPATHTO(SOB_Lythium_Antistasi.Lythium);
        };
        class SOB_kapulio_Antistasi
        {
            briefingName = $STR_A3UE_maps_Kapaulio_mapname;
            directory = QCPATHTO(SOB_Kapaulio_Antistasi.Kapaulio);
        };
    };
};