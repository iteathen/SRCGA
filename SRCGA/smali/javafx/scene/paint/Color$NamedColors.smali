.class final Ljavafx/scene/paint/Color$NamedColors;
.super Ljava/lang/Object;
.source "Color.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/paint/Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NamedColors"
.end annotation


# static fields
.field private static final namedColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1662
    invoke-static {}, Ljavafx/scene/paint/Color$NamedColors;->createNamedColors()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljavafx/scene/paint/Color$NamedColors;->namedColors:Ljava/util/Map;

    .line 1661
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1664
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Color$NamedColors;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1665
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 1660
    move-object v0, p0

    .local v0, "x0":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/paint/Color$NamedColors;->get(Ljava/lang/String;)Ljavafx/scene/paint/Color;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljava/lang/String;
    return-object v0
.end method

.method private static createNamedColors()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1672
    new-instance v1, Ljava/util/HashMap;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v1

    .line 1674
    .local v0, "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/scene/paint/Color;>;"
    move-object v1, v0

    const-string v2, "aliceblue"

    sget-object v3, Ljavafx/scene/paint/Color;->ALICEBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1675
    move-object v1, v0

    const-string v2, "antiquewhite"

    sget-object v3, Ljavafx/scene/paint/Color;->ANTIQUEWHITE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1676
    move-object v1, v0

    const-string v2, "aqua"

    sget-object v3, Ljavafx/scene/paint/Color;->AQUA:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1677
    move-object v1, v0

    const-string v2, "aquamarine"

    sget-object v3, Ljavafx/scene/paint/Color;->AQUAMARINE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1678
    move-object v1, v0

    const-string v2, "azure"

    sget-object v3, Ljavafx/scene/paint/Color;->AZURE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1679
    move-object v1, v0

    const-string v2, "beige"

    sget-object v3, Ljavafx/scene/paint/Color;->BEIGE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1680
    move-object v1, v0

    const-string v2, "bisque"

    sget-object v3, Ljavafx/scene/paint/Color;->BISQUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1681
    move-object v1, v0

    const-string v2, "black"

    sget-object v3, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1682
    move-object v1, v0

    const-string v2, "blanchedalmond"

    sget-object v3, Ljavafx/scene/paint/Color;->BLANCHEDALMOND:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1683
    move-object v1, v0

    const-string v2, "blue"

    sget-object v3, Ljavafx/scene/paint/Color;->BLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1684
    move-object v1, v0

    const-string v2, "blueviolet"

    sget-object v3, Ljavafx/scene/paint/Color;->BLUEVIOLET:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1685
    move-object v1, v0

    const-string v2, "brown"

    sget-object v3, Ljavafx/scene/paint/Color;->BROWN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1686
    move-object v1, v0

    const-string v2, "burlywood"

    sget-object v3, Ljavafx/scene/paint/Color;->BURLYWOOD:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1687
    move-object v1, v0

    const-string v2, "cadetblue"

    sget-object v3, Ljavafx/scene/paint/Color;->CADETBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1688
    move-object v1, v0

    const-string v2, "chartreuse"

    sget-object v3, Ljavafx/scene/paint/Color;->CHARTREUSE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1689
    move-object v1, v0

    const-string v2, "chocolate"

    sget-object v3, Ljavafx/scene/paint/Color;->CHOCOLATE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1690
    move-object v1, v0

    const-string v2, "coral"

    sget-object v3, Ljavafx/scene/paint/Color;->CORAL:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1691
    move-object v1, v0

    const-string v2, "cornflowerblue"

    sget-object v3, Ljavafx/scene/paint/Color;->CORNFLOWERBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1692
    move-object v1, v0

    const-string v2, "cornsilk"

    sget-object v3, Ljavafx/scene/paint/Color;->CORNSILK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1693
    move-object v1, v0

    const-string v2, "crimson"

    sget-object v3, Ljavafx/scene/paint/Color;->CRIMSON:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1694
    move-object v1, v0

    const-string v2, "cyan"

    sget-object v3, Ljavafx/scene/paint/Color;->CYAN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1695
    move-object v1, v0

    const-string v2, "darkblue"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1696
    move-object v1, v0

    const-string v2, "darkcyan"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKCYAN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1697
    move-object v1, v0

    const-string v2, "darkgoldenrod"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKGOLDENROD:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1698
    move-object v1, v0

    const-string v2, "darkgray"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKGRAY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1699
    move-object v1, v0

    const-string v2, "darkgreen"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1700
    move-object v1, v0

    const-string v2, "darkgrey"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKGREY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1701
    move-object v1, v0

    const-string v2, "darkkhaki"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKKHAKI:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1702
    move-object v1, v0

    const-string v2, "darkmagenta"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKMAGENTA:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1703
    move-object v1, v0

    const-string v2, "darkolivegreen"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKOLIVEGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1704
    move-object v1, v0

    const-string v2, "darkorange"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKORANGE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1705
    move-object v1, v0

    const-string v2, "darkorchid"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKORCHID:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1706
    move-object v1, v0

    const-string v2, "darkred"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKRED:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1707
    move-object v1, v0

    const-string v2, "darksalmon"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKSALMON:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1708
    move-object v1, v0

    const-string v2, "darkseagreen"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKSEAGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1709
    move-object v1, v0

    const-string v2, "darkslateblue"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKSLATEBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1710
    move-object v1, v0

    const-string v2, "darkslategray"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKSLATEGRAY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1711
    move-object v1, v0

    const-string v2, "darkslategrey"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKSLATEGREY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1712
    move-object v1, v0

    const-string v2, "darkturquoise"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKTURQUOISE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1713
    move-object v1, v0

    const-string v2, "darkviolet"

    sget-object v3, Ljavafx/scene/paint/Color;->DARKVIOLET:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1714
    move-object v1, v0

    const-string v2, "deeppink"

    sget-object v3, Ljavafx/scene/paint/Color;->DEEPPINK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1715
    move-object v1, v0

    const-string v2, "deepskyblue"

    sget-object v3, Ljavafx/scene/paint/Color;->DEEPSKYBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1716
    move-object v1, v0

    const-string v2, "dimgray"

    sget-object v3, Ljavafx/scene/paint/Color;->DIMGRAY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1717
    move-object v1, v0

    const-string v2, "dimgrey"

    sget-object v3, Ljavafx/scene/paint/Color;->DIMGREY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1718
    move-object v1, v0

    const-string v2, "dodgerblue"

    sget-object v3, Ljavafx/scene/paint/Color;->DODGERBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1719
    move-object v1, v0

    const-string v2, "firebrick"

    sget-object v3, Ljavafx/scene/paint/Color;->FIREBRICK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1720
    move-object v1, v0

    const-string v2, "floralwhite"

    sget-object v3, Ljavafx/scene/paint/Color;->FLORALWHITE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1721
    move-object v1, v0

    const-string v2, "forestgreen"

    sget-object v3, Ljavafx/scene/paint/Color;->FORESTGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1722
    move-object v1, v0

    const-string v2, "fuchsia"

    sget-object v3, Ljavafx/scene/paint/Color;->FUCHSIA:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1723
    move-object v1, v0

    const-string v2, "gainsboro"

    sget-object v3, Ljavafx/scene/paint/Color;->GAINSBORO:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1724
    move-object v1, v0

    const-string v2, "ghostwhite"

    sget-object v3, Ljavafx/scene/paint/Color;->GHOSTWHITE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1725
    move-object v1, v0

    const-string v2, "gold"

    sget-object v3, Ljavafx/scene/paint/Color;->GOLD:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1726
    move-object v1, v0

    const-string v2, "goldenrod"

    sget-object v3, Ljavafx/scene/paint/Color;->GOLDENROD:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1727
    move-object v1, v0

    const-string v2, "gray"

    sget-object v3, Ljavafx/scene/paint/Color;->GRAY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1728
    move-object v1, v0

    const-string v2, "green"

    sget-object v3, Ljavafx/scene/paint/Color;->GREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1729
    move-object v1, v0

    const-string v2, "greenyellow"

    sget-object v3, Ljavafx/scene/paint/Color;->GREENYELLOW:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1730
    move-object v1, v0

    const-string v2, "grey"

    sget-object v3, Ljavafx/scene/paint/Color;->GREY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1731
    move-object v1, v0

    const-string v2, "honeydew"

    sget-object v3, Ljavafx/scene/paint/Color;->HONEYDEW:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1732
    move-object v1, v0

    const-string v2, "hotpink"

    sget-object v3, Ljavafx/scene/paint/Color;->HOTPINK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1733
    move-object v1, v0

    const-string v2, "indianred"

    sget-object v3, Ljavafx/scene/paint/Color;->INDIANRED:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1734
    move-object v1, v0

    const-string v2, "indigo"

    sget-object v3, Ljavafx/scene/paint/Color;->INDIGO:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1735
    move-object v1, v0

    const-string v2, "ivory"

    sget-object v3, Ljavafx/scene/paint/Color;->IVORY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1736
    move-object v1, v0

    const-string v2, "khaki"

    sget-object v3, Ljavafx/scene/paint/Color;->KHAKI:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1737
    move-object v1, v0

    const-string v2, "lavender"

    sget-object v3, Ljavafx/scene/paint/Color;->LAVENDER:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1738
    move-object v1, v0

    const-string v2, "lavenderblush"

    sget-object v3, Ljavafx/scene/paint/Color;->LAVENDERBLUSH:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1739
    move-object v1, v0

    const-string v2, "lawngreen"

    sget-object v3, Ljavafx/scene/paint/Color;->LAWNGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1740
    move-object v1, v0

    const-string v2, "lemonchiffon"

    sget-object v3, Ljavafx/scene/paint/Color;->LEMONCHIFFON:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1741
    move-object v1, v0

    const-string v2, "lightblue"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1742
    move-object v1, v0

    const-string v2, "lightcoral"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTCORAL:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1743
    move-object v1, v0

    const-string v2, "lightcyan"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTCYAN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1744
    move-object v1, v0

    const-string v2, "lightgoldenrodyellow"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTGOLDENRODYELLOW:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1745
    move-object v1, v0

    const-string v2, "lightgray"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTGRAY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1746
    move-object v1, v0

    const-string v2, "lightgreen"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1747
    move-object v1, v0

    const-string v2, "lightgrey"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTGREY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1748
    move-object v1, v0

    const-string v2, "lightpink"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTPINK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1749
    move-object v1, v0

    const-string v2, "lightsalmon"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTSALMON:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1750
    move-object v1, v0

    const-string v2, "lightseagreen"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTSEAGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1751
    move-object v1, v0

    const-string v2, "lightskyblue"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTSKYBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1752
    move-object v1, v0

    const-string v2, "lightslategray"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTSLATEGRAY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1753
    move-object v1, v0

    const-string v2, "lightslategrey"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTSLATEGREY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1754
    move-object v1, v0

    const-string v2, "lightsteelblue"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTSTEELBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1755
    move-object v1, v0

    const-string v2, "lightyellow"

    sget-object v3, Ljavafx/scene/paint/Color;->LIGHTYELLOW:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1756
    move-object v1, v0

    const-string v2, "lime"

    sget-object v3, Ljavafx/scene/paint/Color;->LIME:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1757
    move-object v1, v0

    const-string v2, "limegreen"

    sget-object v3, Ljavafx/scene/paint/Color;->LIMEGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1758
    move-object v1, v0

    const-string v2, "linen"

    sget-object v3, Ljavafx/scene/paint/Color;->LINEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1759
    move-object v1, v0

    const-string v2, "magenta"

    sget-object v3, Ljavafx/scene/paint/Color;->MAGENTA:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1760
    move-object v1, v0

    const-string v2, "maroon"

    sget-object v3, Ljavafx/scene/paint/Color;->MAROON:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1761
    move-object v1, v0

    const-string v2, "mediumaquamarine"

    sget-object v3, Ljavafx/scene/paint/Color;->MEDIUMAQUAMARINE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1762
    move-object v1, v0

    const-string v2, "mediumblue"

    sget-object v3, Ljavafx/scene/paint/Color;->MEDIUMBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1763
    move-object v1, v0

    const-string v2, "mediumorchid"

    sget-object v3, Ljavafx/scene/paint/Color;->MEDIUMORCHID:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1764
    move-object v1, v0

    const-string v2, "mediumpurple"

    sget-object v3, Ljavafx/scene/paint/Color;->MEDIUMPURPLE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1765
    move-object v1, v0

    const-string v2, "mediumseagreen"

    sget-object v3, Ljavafx/scene/paint/Color;->MEDIUMSEAGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1766
    move-object v1, v0

    const-string v2, "mediumslateblue"

    sget-object v3, Ljavafx/scene/paint/Color;->MEDIUMSLATEBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1767
    move-object v1, v0

    const-string v2, "mediumspringgreen"

    sget-object v3, Ljavafx/scene/paint/Color;->MEDIUMSPRINGGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1768
    move-object v1, v0

    const-string v2, "mediumturquoise"

    sget-object v3, Ljavafx/scene/paint/Color;->MEDIUMTURQUOISE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1769
    move-object v1, v0

    const-string v2, "mediumvioletred"

    sget-object v3, Ljavafx/scene/paint/Color;->MEDIUMVIOLETRED:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1770
    move-object v1, v0

    const-string v2, "midnightblue"

    sget-object v3, Ljavafx/scene/paint/Color;->MIDNIGHTBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1771
    move-object v1, v0

    const-string v2, "mintcream"

    sget-object v3, Ljavafx/scene/paint/Color;->MINTCREAM:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1772
    move-object v1, v0

    const-string v2, "mistyrose"

    sget-object v3, Ljavafx/scene/paint/Color;->MISTYROSE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1773
    move-object v1, v0

    const-string v2, "moccasin"

    sget-object v3, Ljavafx/scene/paint/Color;->MOCCASIN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1774
    move-object v1, v0

    const-string v2, "navajowhite"

    sget-object v3, Ljavafx/scene/paint/Color;->NAVAJOWHITE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1775
    move-object v1, v0

    const-string v2, "navy"

    sget-object v3, Ljavafx/scene/paint/Color;->NAVY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1776
    move-object v1, v0

    const-string v2, "oldlace"

    sget-object v3, Ljavafx/scene/paint/Color;->OLDLACE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1777
    move-object v1, v0

    const-string v2, "olive"

    sget-object v3, Ljavafx/scene/paint/Color;->OLIVE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1778
    move-object v1, v0

    const-string v2, "olivedrab"

    sget-object v3, Ljavafx/scene/paint/Color;->OLIVEDRAB:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1779
    move-object v1, v0

    const-string v2, "orange"

    sget-object v3, Ljavafx/scene/paint/Color;->ORANGE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1780
    move-object v1, v0

    const-string v2, "orangered"

    sget-object v3, Ljavafx/scene/paint/Color;->ORANGERED:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1781
    move-object v1, v0

    const-string v2, "orchid"

    sget-object v3, Ljavafx/scene/paint/Color;->ORCHID:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1782
    move-object v1, v0

    const-string v2, "palegoldenrod"

    sget-object v3, Ljavafx/scene/paint/Color;->PALEGOLDENROD:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1783
    move-object v1, v0

    const-string v2, "palegreen"

    sget-object v3, Ljavafx/scene/paint/Color;->PALEGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1784
    move-object v1, v0

    const-string v2, "paleturquoise"

    sget-object v3, Ljavafx/scene/paint/Color;->PALETURQUOISE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1785
    move-object v1, v0

    const-string v2, "palevioletred"

    sget-object v3, Ljavafx/scene/paint/Color;->PALEVIOLETRED:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1786
    move-object v1, v0

    const-string v2, "papayawhip"

    sget-object v3, Ljavafx/scene/paint/Color;->PAPAYAWHIP:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1787
    move-object v1, v0

    const-string v2, "peachpuff"

    sget-object v3, Ljavafx/scene/paint/Color;->PEACHPUFF:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1788
    move-object v1, v0

    const-string v2, "peru"

    sget-object v3, Ljavafx/scene/paint/Color;->PERU:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1789
    move-object v1, v0

    const-string v2, "pink"

    sget-object v3, Ljavafx/scene/paint/Color;->PINK:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1790
    move-object v1, v0

    const-string v2, "plum"

    sget-object v3, Ljavafx/scene/paint/Color;->PLUM:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1791
    move-object v1, v0

    const-string v2, "powderblue"

    sget-object v3, Ljavafx/scene/paint/Color;->POWDERBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1792
    move-object v1, v0

    const-string v2, "purple"

    sget-object v3, Ljavafx/scene/paint/Color;->PURPLE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1793
    move-object v1, v0

    const-string v2, "red"

    sget-object v3, Ljavafx/scene/paint/Color;->RED:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1794
    move-object v1, v0

    const-string v2, "rosybrown"

    sget-object v3, Ljavafx/scene/paint/Color;->ROSYBROWN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1795
    move-object v1, v0

    const-string v2, "royalblue"

    sget-object v3, Ljavafx/scene/paint/Color;->ROYALBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1796
    move-object v1, v0

    const-string v2, "saddlebrown"

    sget-object v3, Ljavafx/scene/paint/Color;->SADDLEBROWN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1797
    move-object v1, v0

    const-string v2, "salmon"

    sget-object v3, Ljavafx/scene/paint/Color;->SALMON:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1798
    move-object v1, v0

    const-string v2, "sandybrown"

    sget-object v3, Ljavafx/scene/paint/Color;->SANDYBROWN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1799
    move-object v1, v0

    const-string v2, "seagreen"

    sget-object v3, Ljavafx/scene/paint/Color;->SEAGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1800
    move-object v1, v0

    const-string v2, "seashell"

    sget-object v3, Ljavafx/scene/paint/Color;->SEASHELL:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1801
    move-object v1, v0

    const-string v2, "sienna"

    sget-object v3, Ljavafx/scene/paint/Color;->SIENNA:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1802
    move-object v1, v0

    const-string v2, "silver"

    sget-object v3, Ljavafx/scene/paint/Color;->SILVER:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1803
    move-object v1, v0

    const-string v2, "skyblue"

    sget-object v3, Ljavafx/scene/paint/Color;->SKYBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1804
    move-object v1, v0

    const-string v2, "slateblue"

    sget-object v3, Ljavafx/scene/paint/Color;->SLATEBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1805
    move-object v1, v0

    const-string v2, "slategray"

    sget-object v3, Ljavafx/scene/paint/Color;->SLATEGRAY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1806
    move-object v1, v0

    const-string v2, "slategrey"

    sget-object v3, Ljavafx/scene/paint/Color;->SLATEGREY:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1807
    move-object v1, v0

    const-string v2, "snow"

    sget-object v3, Ljavafx/scene/paint/Color;->SNOW:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1808
    move-object v1, v0

    const-string v2, "springgreen"

    sget-object v3, Ljavafx/scene/paint/Color;->SPRINGGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1809
    move-object v1, v0

    const-string v2, "steelblue"

    sget-object v3, Ljavafx/scene/paint/Color;->STEELBLUE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1810
    move-object v1, v0

    const-string v2, "tan"

    sget-object v3, Ljavafx/scene/paint/Color;->TAN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1811
    move-object v1, v0

    const-string v2, "teal"

    sget-object v3, Ljavafx/scene/paint/Color;->TEAL:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1812
    move-object v1, v0

    const-string v2, "thistle"

    sget-object v3, Ljavafx/scene/paint/Color;->THISTLE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1813
    move-object v1, v0

    const-string v2, "tomato"

    sget-object v3, Ljavafx/scene/paint/Color;->TOMATO:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1814
    move-object v1, v0

    const-string v2, "transparent"

    sget-object v3, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1815
    move-object v1, v0

    const-string v2, "turquoise"

    sget-object v3, Ljavafx/scene/paint/Color;->TURQUOISE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1816
    move-object v1, v0

    const-string v2, "violet"

    sget-object v3, Ljavafx/scene/paint/Color;->VIOLET:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1817
    move-object v1, v0

    const-string v2, "wheat"

    sget-object v3, Ljavafx/scene/paint/Color;->WHEAT:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1818
    move-object v1, v0

    const-string v2, "white"

    sget-object v3, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1819
    move-object v1, v0

    const-string v2, "whitesmoke"

    sget-object v3, Ljavafx/scene/paint/Color;->WHITESMOKE:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1820
    move-object v1, v0

    const-string v2, "yellow"

    sget-object v3, Ljavafx/scene/paint/Color;->YELLOW:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1821
    move-object v1, v0

    const-string v2, "yellowgreen"

    sget-object v3, Ljavafx/scene/paint/Color;->YELLOWGREEN:Ljavafx/scene/paint/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1823
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/scene/paint/Color;>;"
    return-object v0
.end method

.method private static get(Ljava/lang/String;)Ljavafx/scene/paint/Color;
    .locals 3

    .prologue
    .line 1668
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v1, Ljavafx/scene/paint/Color$NamedColors;->namedColors:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method
