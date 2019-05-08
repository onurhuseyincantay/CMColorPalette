//
//  Colors.swift
//  CMColorPallette
//
//  Created by Onur Hüseyin Çantay on 8.05.2019.
//  Copyright © 2019 Onur Hüseyin Çantay. All rights reserved.
//
import UIKit

private extension UIColor{
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hexString.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

public extension Colors.Color{
    var value : UIColor{
        switch self {
        case .Turquoise:return UIColor.init(hexString: "#1abc9c")
        case .Emerald : return UIColor.init(hexString: "#2ecc71")
        case .PeterRiver : return UIColor.init(hexString: "#3498db")
        case .Amethyst : return UIColor.init(hexString: "#9b59b6")
        case .WetAsphalt:return UIColor.init(hexString: "#34495e")
        case .GreenSea : return UIColor.init(hexString: "#16a085")
        case .Nephritis : return UIColor.init(hexString: "#27ae60")
        case .BelzieHole : return UIColor.init(hexString: "#2980b9")
        case .Wisteria : return UIColor.init(hexString: "#8e44ad")
        case .MiddleBlue: return UIColor.init(hexString: "#2c3e50")
        case .SunFlower:return UIColor.init(hexString: "#f1c40f")
        case .Carrot : return UIColor.init(hexString: "#e67e22")
        case .Alizarin:return UIColor.init(hexString: "#e74c3c")
        case .Clouds : return UIColor.init(hexString: "#ecf0f1")
        case .Concrete : return UIColor.init(hexString: "#95a5a6")
        case .Orange : return UIColor.init(hexString: "#f39c12")
        case .Pumpkin : return UIColor.init(hexString: "#d35400")
        case .Pomegranate : return UIColor.init(hexString: "#c0392b")
        case .Silver : return UIColor.init(hexString: "#bdc3c7")
        case .Asbestos:return UIColor.init(hexString: "#7f8c8d")
        case .LightGreenishBlue : return UIColor.init(hexString: "#55efc4")
        case .FadedPoster:return UIColor.init(hexString: "#81ecec")
        case .GreenDarnerTail : return UIColor.init(hexString: "#74b9ff")
        case .ShyMoment : return UIColor.init(hexString: "#a29bfe")
        case .CityLights : return UIColor.init(hexString: "#dfe6e9")
        case .MintLeaf : return UIColor.init(hexString: "#00b894")
        case .RobinsEggBlue:return UIColor.init(hexString: "#00cec9")
        case .ElectronBlue : return UIColor.init(hexString: "#0984e3")
        case .ExodusFruit: return UIColor.init(hexString: "#6c5ce7")
        case .SoothingBreeze : return UIColor.init(hexString: "#b2bec3")
        case .SourLemon : return UIColor.init(hexString: "#ffeaa7")
        case .FirstDate : return UIColor.init(hexString: "#fab1a0")
        case .PinkGlamour:return UIColor.init(hexString: "#ff7675")
        case .Pico8Pink : return UIColor.init(hexString: "#fd79a8")
        case .AmericanRiver : return UIColor.init(hexString: "#636e72")
        case .BrightYarrow:return UIColor.init(hexString: "#fdcb6e")
        case .OrangeVille : return UIColor.init(hexString: "#e17055")
        case .ChiChong : return UIColor.init(hexString: "#d63031")
        case .PrunusAvium : return UIColor.init(hexString: "#e84393")
        case .DraculaOrchid : return UIColor.init(hexString: "#2d3436")
        case .BeeKeeper:return UIColor.init(hexString: "#f6e58d")
        case .SpicedButterNut : return UIColor.init(hexString: "#ffbe76")
        case .JuneBud:return UIColor.init(hexString: "#badc58")
        case .CoastalBreeze:return UIColor.init(hexString: "#dff9fb")
        case .Turbo : return UIColor.init(hexString: "#f9ca24")
        case .QuinceJelly:return UIColor.init(hexString: "#f0932b")
        case .CarminePink : return UIColor.init(hexString: "#eb4d4b")
        case .PureApple:return UIColor.init(hexString: "#6ab04c")
        case .HintOfIcePack : return UIColor.init(hexString: "#c7ecee")
        case .HelioTrope : return UIColor.init(hexString: "#e056fd")
        case .DeepKoamaru : return UIColor.init(hexString: "#30336b")
        case .SoaringEagle : return UIColor.init(hexString: "#95afc0")
        case .GreenlandGreen:return UIColor.init(hexString: "#22a6b3")
        case .SteelPink : return UIColor.init(hexString: "#be2edd")
        case .Blurple:return UIColor.init(hexString: "#4834d4")
        case .DeepCove : return UIColor.init(hexString: "#130f40")
        case .WizardGrey : return UIColor.init(hexString: "#535c68")
        case .ProtosPylon : return UIColor.init(hexString: "#00a8ff")
        case .PeriWinkle:return UIColor.init(hexString: "#9c88ff")
        case .RiseNShine:return UIColor.init(hexString: "#fbc531")
        case .DownloadProgress:return UIColor.init(hexString: "#4cd137")
        case .SearBook:return UIColor.init(hexString: "#487eb0")
        case .VanadylBlue : return UIColor.init(hexString: "#0097e6")
        case .MattPurple : return UIColor.init(hexString: "#8c7ae6")
        case .NanoHanachaGold:return UIColor.init(hexString: "#e1b12c")
        case .SkirretGreen:return UIColor.init(hexString: "#44bd32")
        case .Naval : return UIColor.init(hexString: "#40739e")
        case .NasturcianFlower:return UIColor.init(hexString: "#e84118")
        case .LynxWhite : return UIColor.init(hexString: "#f5f6fa")
        case .BlueBerrySoda:return UIColor.init(hexString: "#7f8fa6")
        case .MazarineBlue:return UIColor.init(hexString: "#273c75")
        case .BlueNights:return UIColor.init(hexString: "#353b48")
        case .HarleyDavidsonOrange:return UIColor.init(hexString: "#c23616")
        case .HintOfPensive : return UIColor.init(hexString: "#dcdde1")
        case .ChainGangGrey : return UIColor.init(hexString: "#718093")
        case .PicoVoid : return UIColor.init(hexString: "#192a56")
        case .ElectroMagnetic : return UIColor.init(hexString: "#2f3640")
        case .JigglyPuff : return UIColor.init(hexString: "#ff9ff3")
        case .CasandoraYellow : return UIColor.init(hexString: "#feca57")
        case .PastelRed:return UIColor.init(hexString:  "#ff6b6b")
        case .MegaMan:return UIColor.init(hexString: "#48dbfb")
        case .WildCaribeanGreen : return UIColor.init(hexString: "#1dd1a1")
        case .LianHongLotusPink : return UIColor.init(hexString: "#f368e0")
        case .DoubleDragonSkin:return UIColor.init(hexString: "#ff9f43")
        case .Amour : return UIColor.init(hexString: "#ee5253")
        case .Cyanite:return UIColor.init(hexString: "#0abde3")
        case .DarkMountainMeadow : return UIColor.init(hexString: "#10ac84")
        case .JadeDust : return UIColor.init(hexString: "#00d2d3")
        case .JoustBlue : return UIColor.init(hexString: "#54a0ff")
        case .NasuPurple : return UIColor.init(hexString: "#5f27cd")
        case .LightBlueBalerina : return UIColor.init(hexString: "#c8d6e5")
        case .FuelTown : return UIColor.init(hexString: "#576574")
        case .AquaVelvet : return UIColor.init(hexString: "#01a3a4")
        case .BlueDeFrance : return UIColor.init(hexString: "#2e86de")
        case .BlueBell : return UIColor.init(hexString: "#341f97")
        case .StormPetrel : return UIColor.init(hexString:  "#8395a7")
        case .ImperialPrimer : return UIColor.init(hexString:   "#222f3e")
        case .GoldenSand : return UIColor.init(hexString: "#eccc68")
        case .Coral : return UIColor.init(hexString: "#ff7f50")
        case .WildWaterMelon : return UIColor.init(hexString: "#ff6b81")
        case .Peace : return UIColor.init(hexString: "#a4b0be")
        case .Grisaille:return UIColor.init(hexString: "#57606f")
        case .BruschettaTomato : return UIColor.init(hexString: "#ff6348")
        case .Watermelon : return UIColor.init(hexString:   "#ff4757")
        case .BayWharf : return UIColor.init(hexString: "#747d8c")
        case .PrestigeBlue : return UIColor.init(hexString: "#2f3542")
        case .LimeSoap : return UIColor.init(hexString: "#7bed9f")
        case .FrenchBlueSky : return UIColor.init(hexString: "#70a1ff")
        case .SaturatedSky:return UIColor.init(hexString:  "#5352ed")
        case .UfoGreen :return UIColor.init(hexString: "#2ed573")
        case .ClearChill : return UIColor.init(hexString: "#1e90ff")
        case .BrightGreek : return UIColor.init(hexString: "#3742fa")
        case .AntiFlashWhite :return UIColor.init(hexString:  "#f1f2f6")
        case .TwinkyBlue,.TwinkleBlue : return UIColor.init(hexString: "#ced6e0")
        case .Energos:return UIColor.init(hexString: "#C4E538")
        case .BlueMartina : return UIColor.init(hexString: "#12CBC4")
        case .LavenderRose : return UIColor.init(hexString: "#FDA7DF")
        case .BaraRed : return UIColor.init(hexString: "#ED4C67")
        case .RadiantYellow : return UIColor.init(hexString: "#F79F1F")
        case .AndroidGreen : return UIColor.init(hexString: "#A3CB38")
        case .MediterraneanSea : return UIColor.init(hexString: "#1289A7")
        case .LavenderTea:return UIColor.init(hexString: "#D980FA")
        case .VeryBerry : return UIColor.init(hexString: "#B53471")
        case .PuffinsBill : return UIColor.init(hexString: "#EE5A24")
        case .PixelatedGrass :return UIColor.init(hexString: "#009432")
        case .MerchantMarineBlue:return UIColor.init(hexString: "#0652DD")
        case .ForgottenPurple : return UIColor.init(hexString: "#9980FA")
        case .HollyHock : return UIColor.init(hexString: "#833471")
        case .RedPigment : return UIColor.init(hexString: "#EA2027")
        case .TurkishAqua : return UIColor.init(hexString: "#006266")
        case .TwoThousandLeaguesUnderTheSea :return UIColor.init(hexString: "#1B1464")
        case .CircumorbitalRing : return UIColor.init(hexString: "#5758BB")
        case .MagentPurple,.MagentaPurple : return UIColor.init(hexString: "#6F1E51")
        case .FlatFlesh : return UIColor.init(hexString: "#fad390")
        case .MelonMelody : return UIColor.init(hexString: "#f8c291")
        case .Livid : return UIColor.init(hexString: "#6a89cc")
        case .Spray : return UIColor.init(hexString: "#82ccdd")
        case .ParadiseGreen : return UIColor.init(hexString: "#b8e994")
        case .SquashBlossom : return UIColor.init(hexString: "#f6b93b")
        case .MandarineRed : return UIColor.init(hexString: "#e55039")
        case .AzraqBlue : return UIColor.init(hexString: "#4a69bd")
        case .Dupain :return UIColor.init(hexString: "#60a3bc")
        case .AuroraGreen :return UIColor.init(hexString: "#78e08f")
        case .IcelandPoppy : return UIColor.init(hexString: "#fa983a")
        case .TomatoRed : return UIColor.init(hexString:  "#eb2f06")
        case .YueGuangLanBlue : return UIColor.init(hexString: "#1e3799")
        case .GoodSamaritan :return UIColor.init(hexString: "#3c6382")
        case .WaterFall : return UIColor.init(hexString: "#38ada9")
        case .CarrotOrange : return UIColor.init(hexString: "#e58e26")
        case .JalapenoRed :return UIColor.init(hexString: "#b71540")
        case .DarkSapphire :return UIColor.init(hexString: "#0c2461")
        case .ForestBlues : return UIColor.init(hexString: "#0a3d62")
        case .ReefEncounter : return UIColor.init(hexString: "#079992")
        case .FusionRed : return UIColor.init(hexString: "#fc5c65")
        case .OrangeHibiscus : return UIColor.init(hexString: "#fd9644")
        case .Flirtatious : return UIColor.init(hexString: "#fed330")
        case .ReptileGreen :return UIColor.init(hexString: "#26de81")
        case .MaximeBlueGreen :return UIColor.init(hexString: "#2bcbba")
        case .Desire : return UIColor.init(hexString: "#eb3b5a")
        case .BeniukonBronze :return UIColor.init(hexString: "#fa8231")
        case .NycTaxi : return UIColor.init(hexString: "#f7b731")
        case .AlgalFuel :return UIColor.init(hexString:"#20bf6b")
        case .TurquioseTopaz : return UIColor.init(hexString: "#0fb9b1")
        case .HighBlue : return UIColor.init(hexString: "#45aaf2")
        case .CSixtyFourNtsc : return UIColor.init(hexString: "#4b7bec")
        case .LighterPurple :return UIColor.init(hexString: "#a55eea")
        case .BlueGrey : return UIColor.init(hexString: "#d1d8e0")
        case .Boyzone : return UIColor.init(hexString: "#2d98da")
        case .RoyalBlue : return UIColor.init(hexString: "#3867d6")
        case .GloomyPurple : return UIColor.init(hexString: "#8854d0")
        case .Innuendo : return UIColor.init(hexString: "#a5b1c2")
        case .BlueHorizon : return UIColor.init(hexString: "#4b6584")
        case .OrchidOrange :return UIColor.init(hexString: "#FEA47F")
        case .SpiroDiscoBall :return UIColor.init(hexString: "#25CCF7")
        case .HoneyGlow :return UIColor.init(hexString: "#EAB543")
        case .SweetGarden :return UIColor.init(hexString: "#55E6C1")
        case .FallingStar :return UIColor.init(hexString: "#CAD3C8")
        case .RichGardenia :return UIColor.init(hexString: "#F97F51")
        case .SarawakWhitePaper :return UIColor.init(hexString: "#F8EFBA")
        case .Keppel :return UIColor.init(hexString: "#58B19F")
        case .ShipsOfficer :return UIColor.init(hexString: "#2C3A47")
        case .FieryFuchsia :return UIColor.init(hexString: "#B33771")
        case .GoergiaPeach :return UIColor.init(hexString: "#FD7272")
        case .OasisStream :return UIColor.init(hexString:   "#9AECDB")
        case .BrightUbe :return UIColor.init(hexString: "#D6A2E8")
        case .EndingNavyBlue :return UIColor.init(hexString: "#182C61")
        case .SasquatchSocks :return UIColor.init(hexString: "#FC427B")
        case .PineGlade : return UIColor.init(hexString: "#BDC581")
        case .HighlighterLavender : return UIColor.init(hexString: "#82589F")
        case .CreamyPeach : return UIColor.init(hexString: "#f3a683")
        case .RosyHighlight :return UIColor.init(hexString: "#f7d794")
        case .SoftBlue : return UIColor.init(hexString: "#778beb")
        case .BrewedMustard : return UIColor.init(hexString: "#e77f67")
        case .OldGeranium : return UIColor.init(hexString: "#cf6a87")
        case .SawthootAak :return  UIColor.init(hexString: "#f19066")
        case .SummerTime : return UIColor.init(hexString: "#f5cd79")
        case .CornFlower : return UIColor.init(hexString: "#546de5")
        case .TigerLily : return UIColor.init(hexString: "#e15f41")
        case .DeepRose : return UIColor.init(hexString: "#c44569")
        case .PurpleMountainMajesty : return UIColor.init(hexString: "#786fa6")
        case .RoguePink : return UIColor.init(hexString: "#f8a5c2")
        case .Squaeky : return UIColor.init(hexString: "#63cdda")
        case .AppleValley : return UIColor.init(hexString: "#ea8685")
        case .PencilLead : return UIColor.init(hexString: "#596275")
        case .PurpleCoralLite : return UIColor.init(hexString: "#574b90")
        case .FlamingoPink : return UIColor.init(hexString: "#f78fb3")
        case .BlueCuracao :return UIColor.init(hexString: "#3dc1d3")
        case .PorcelianRose : return UIColor.init(hexString: "#e66767")
        case .Biscay : return UIColor.init(hexString: "#303952")
        case .JacksonsPurple : return UIColor.init(hexString: "#40407a")
        case .CSixtyFourPurple : return UIColor.init(hexString: "#706fd3")
        case .SwanWhite : return UIColor.init(hexString: "#f7f1e3")
        case .SummerSky : return UIColor.init(hexString: "#34ace0")
        case .CelestialGreen : return UIColor.init(hexString: "#33d9b2")
        case .LuckyPoint : return UIColor.init(hexString: "#2c2c54")
        case .Liberty :return UIColor.init(hexString: "#474787")
        case .HotStone :return UIColor.init(hexString: "#aaa69d")
        case .DevilBlue :return UIColor.init(hexString: "#227093")
        case .PalmSpringsSplash :return UIColor.init(hexString: "#218c74")
        case .FlourescentRed :return UIColor.init(hexString: "#ff5252")
        case .SyntheticPumpkin :return UIColor.init(hexString: "#ff793f")
        case .CrocodileTooth :return UIColor.init(hexString: "#d1ccc0")
        case .MandarinSobret :return UIColor.init(hexString: "#ffb142")
        case .EyeOfNewt :return UIColor.init(hexString: "#b33939")
        case .ChileanFire :return UIColor.init(hexString: "#cd6133")
        case .GreyPorcelain :return UIColor.init(hexString: "#84817a")
        case .AlamedaOchre :return UIColor.init(hexString: "#cc8e35")
        case .Desert :return UIColor.init(hexString: "#ccae62")
        case .HighlighterPink :return UIColor.init(hexString: "#ef5777")
        case .DarkPeriwinkle : return UIColor.init(hexString: "#575fcf")
        case .FreshTorquoise :return UIColor.init(hexString:    "#34e7e4")
        case .SizzlingRed :return UIColor.init(hexString: "#f53b57")
        case .FreeSpeechBlue : return UIColor.init(hexString: "#3c40c6")
        case .GreenTeal : return UIColor.init(hexString: "#05c46b")
        case .NarenjiOrange :return UIColor.init(hexString: "#ffc048")
        case .YrielYellow :return UIColor.init(hexString: "#ffdd59")
        case .SunsetOrange :return UIColor.init(hexString: "#ff5e57")
        case .HintOfElusiveBlue : return UIColor.init(hexString: "#d2dae2")
        case .GoodNight :return UIColor.init(hexString: "#485460")
        case .ChromeYellow :return UIColor.init(hexString: "#ffa801")
        case .VibrantYellow :return UIColor.init(hexString: "#ffd32a")
        case .RedOrange :return UIColor.init(hexString: "#ff3f34")
        case .LondonSquare :return UIColor.init(hexString: "#808e9b")
        case .BlackPearl :return UIColor.init(hexString: "#1e272e")
        case .BrightLilac :return UIColor.init(hexString: "#cd84f1")
        case .PrettyPlease :return UIColor.init(hexString: "#ffcccc")
        case .LightRed :return UIColor.init(hexString: "#ff4d4d")
        case .UnMellowYellow :return UIColor.init(hexString: "#fffa65")
        case .LightPurple : return UIColor.init(hexString: "#c56cf0")
        case .YoungSalmon :return UIColor.init(hexString: "#ffb8b8")
        case .DornYellow :return UIColor.init(hexString: "#fff200")
        case .WinterGreen :return UIColor.init(hexString: "#32ff7e")
        case .ElectricBlue :return UIColor.init(hexString: "#7efff5")
        case .NeonBLue :return UIColor.init(hexString: "#18dcff")
        case .LightSlateBlue :return UIColor.init(hexString: "#7d5fff")
        case .ShadowedSteel : return UIColor.init(hexString: "#4b4b4b")
        case .WeirdGreen :return UIColor.init(hexString: "#3ae374")
        case .HammamBlue :return UIColor.init(hexString: "#67e6dc")
        case .LightIndigo :return UIColor.init(hexString: "#17c0eb")
        case .BalticSea :return UIColor.init(hexString: "#3d3d3d")
        default:
            return UIColor.white
        }
    }
}

public class Colors {
    
    public enum Color{
        
        // -- Flatt UI Palette V1 Thanks To Flat UI Colors
        case Turquoise
        case Emerald
        case PeterRiver
        case Amethyst
        case WetAsphalt
        case GreenSea
        case Nephritis
        case BelzieHole
        case Wisteria
        case MidnightBlue
        case SunFlower
        case Carrot
        case Alizarin
        case Clouds
        case Concrete
        case Orange
        case Pumpkin
        case Pomegranate
        case Silver
        case Asbestos
        // -- American Palette Thanks To Kevin Yang
        case LightGreenishBlue
        case FadedPoster
        case GreenDarnerTail
        case ShyMoment
        case CityLights
        case MintLeaf
        case RobinsEggBlue
        case ElectronBlue
        case ExodusFruit
        case SoothingBreeze
        case SourLemon
        case FirstDate
        case PinkGlamour
        case Pico8Pink
        case AmericanRiver
        case BrightYarrow
        case OrangeVille
        case ChiChong
        case PrunusAvium
        case DraculaOrchid
        // -- Aussie Palette  Thanks To Hoolahan
        case BeeKeeper
        case SpicedNectarine
        case PinkyGlamour
        case JuneBud
        case CoastalBreeze
        case Turbo
        case QuinceJelly
        case CarminePink
        case PureApple
        case HintOfIcePack
        case MiddleBlue
        case HelioTrope
        case ExodusyFruit
        case DeepKoamaru
        case SoaringEagle
        case GreenlandGreen
        case SteelPink
        case Blurple
        case DeepCove
        case WizardGrey
        // -- British Palette Thanks To Jan Losert
        case ProtosPylon
        case PeriWinkle
        case RiseNShine
        case DownloadProgress
        case SearBook
        case VanadylBlue
        case MattPurple
        case NanoHanachaGold
        case SkirretGreen
        case Naval
        case NasturcianFlower
        case LynxWhite
        case BlueBerrySoda
        case MazarineBlue
        case BlueNights
        case HarleyDavidsonOrange
        case HintOfPensive
        case ChainGangGrey
        case PicoVoid
        case ElectroMagnetic
        // -- Canadian Palette Thanks To Dimitri Litvinov
        case JigglyPuff
        case CasandoraYellow
        case PastelRed
        case Megaman
        case WildCaribeanGreen
        case LianHongLotusPink
        case DoubleDragonSkin
        case Amour
        case Cyanite
        case DarkMountainMeadow
        case JadeDust
        case JoustBlue
        case NasuPurple
        case LightBlueBalerina
        case FuelTown
        case AquaVelvet
        case BlueDeFrance
        case BlueBell
        case StormPetrel
        case ImperialPrimer
        // -- Chinese Palette Thanks To Wenjun
        case GoldenSand
        case Coral
        case WildWaterMelon
        case Peace
        case Grisaille
        case Orangy
        case BruschettaTomato
        case Watermelon
        case BayWharf
        case PrestigeBlue
        case LimeSoap
        case FrenchBlueSky
        case SaturatedSky
        case CityLighty
        case UfoGreen
        case ClearChill
        case BrightGreek
        case AntiFlashWhite
        case TwinkleBlue
        // -- Dutch Palette Thanks To Jaroen van Eerden
        case Sunflower
        case Energos
        case BlueMartina
        case LavenderRose
        case BaraRed
        case RadiantYellow
        case AndroidGreen
        case MediterraneanSea
        case LavenderTea
        case VeryBerry
        case PuffinsBill
        case PixelatedGrass
        case MerchantMarineBlue
        case ForgottenPurple
        case HollyHock
        case RedPigment
        case TurkishAqua
        case TwoThousandLeaguesUnderTheSea
        case CircumorbitalRing
        case MagentaPurple
        // -- French Palette Thanks To Léa Poisson
        case FlatFlesh
        case MelonMelody
        case Livid
        case Spray
        case ParadiseGreen
        case SquashBlossom
        case MandarineRed
        case AzraqBlue
        case Dupain
        case AuroraGreen
        case IcelandPoppy
        case TomatoRed
        case YueGuangLanBlue
        case GoodSamaritan
        case WaterFall
        case CarrotOrange
        case JalapenoRed
        case DarkSapphire
        case ForestBlues
        case ReefEncounter
        // -- German Palette Thanks To Martin David
        case FusionRed
        case OrangeHibiscus
        case Flirtatious
        case ReptileGreen
        case MaximeBlueGreen
        case Desire
        case BeniukonBronze
        case NycTaxi
        case AlgalFuel
        case TurquioseTopaz
        case HighBlue
        case CSixtyFourNtsc
        case LighterPurple
        case TwinkyBlue
        case BlueGrey
        case Boyzone
        case RoyalBlue
        case GloomyPurple
        case Innuendo
        case BlueHorizon
        // -- Indian Palette by Ranganath Krishnamani
        case OrchidOrange
        case SpiroDiscoBall
        case HoneyGlow
        case SweetGarden
        case FallingStar
        case RichGardenia
        case ClearlyChill
        case SarawakWhitePaper
        case Keppel
        case ShipsOfficer
        case FieryFuchsia
        case BlueBelly
        case GoergiaPeach
        case OasisStream
        case BrightUbe
        case MagentPurple
        case EndingNavyBlue
        case SasquatchSocks
        case PineGlade
        case HighlighterLavender
        // -- Russian Palette Thanks To Alexander Zaytsev
        case CreamyPeach
        case RosyHighlight
        case SoftBlue
        case BrewedMustard
        case OldGeranium
        case SawthootAak
        case SummerTime
        case CornFlower
        case TigerLily
        case DeepRose
        case PurpleMountainMajesty
        case RoguePink
        case Squaeky
        case AppleValley
        case PencilLead
        case PurpleCoralLite
        case FlamingoPink
        case BlueCuracao
        case PorcelianRose
        case Biscay
        // -- Spanish Palette Thanks To Miguel Camacho
        case JacksonsPurple
        case CSixtyFourPurple
        case SwanWhite
        case SummerSky
        case CelestialGreen
        case LuckyPoint
        case Liberty
        case HotStone
        case DevilBlue
        case PalmSpringsSplash
        case FlourescentRed
        case SyntheticPumpkin
        case CrocodileTooth
        case MandarinSorbet
        case SpicedButterNut
        case EyeOfNewt
        case ChileanFire
        case GreyPorcelain
        case AlamedaOchre
        case Desert
        // -- Swedish Palette Thanks To Jesper Dahlqvist
        case HighlighterPink
        case DarkPeriwinkle
        case MegaMan
        case FreshTorquoise
        case MintyGreen
        case SizzlingRed
        case FreeSpeechBlue
        case GreenTeal
        case NarenjiOrange
        case YrielYellow
        case SunsetOrange
        case HintOfElusiveBlue
        case GoodNight
        case ChromeYellow
        case VibrantYellow
        case RedOrange
        case LondonSquare
        case BlackPearl
        // -- Turkish Palette Thanks To Tamer Köseli
        case BrightLilac
        case PrettyPlease
        case LightRed
        case MandarinSobret
        case UnMellowYellow
        case LightPurple
        case YoungSalmon
        case DornYellow
        case WinterGreen
        case ElectricBlue
        case NeonBLue
        case LightSlateBlue
        case ShadowedSteel
        case WeirdGreen
        case HammamBlue
        case LightIndigo
        case BalticSea
        
    }
    
}



