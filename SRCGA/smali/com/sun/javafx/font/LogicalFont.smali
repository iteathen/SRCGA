.class public Lcom/sun/javafx/font/LogicalFont;
.super Ljava/lang/Object;
.source "LogicalFont.java"

# interfaces
.implements Lcom/sun/javafx/font/CompositeFontResource;


# static fields
.field public static final MONOSPACED:Ljava/lang/String; = "Monospaced"

.field private static final MONOSPACED_INDEX:I = 0x2

.field public static final SANS_SERIF:Ljava/lang/String; = "SansSerif"

.field private static final SANS_SERIF_INDEX:I = 0x0

.field public static final SERIF:Ljava/lang/String; = "Serif"

.field private static final SERIF_INDEX:I = 0x1

.field public static final STYLE_BOLD:Ljava/lang/String; = "Bold"

.field public static final STYLE_BOLD_ITALIC:Ljava/lang/String; = "Bold Italic"

.field public static final STYLE_ITALIC:Ljava/lang/String; = "Italic"

.field public static final STYLE_REGULAR:Ljava/lang/String; = "Regular"

.field public static final SYSTEM:Ljava/lang/String; = "System"

.field private static final SYSTEM_INDEX:I = 0x3

.field static final canonicalFamilyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static logFamilies:[[Ljava/lang/String;

.field static logicalFonts:[Lcom/sun/javafx/font/LogicalFont;


# instance fields
.field private fallbacks:[Lcom/sun/javafx/font/FontResource;

.field private familyName:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private hash:I

.field isBold:Z

.field isItalic:Z

.field private linkedFontFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linkedFontNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

.field private nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

.field private physicalFamily:Ljava/lang/String;

.field private physicalFileName:Ljava/lang/String;

.field private physicalFullName:Ljava/lang/String;

.field private slot0FontResource:Lcom/sun/javafx/font/FontResource;

.field strikeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrikeDesc;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/FontStrike;",
            ">;>;"
        }
    .end annotation
.end field

.field private styleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    const-string v1, "system"

    const-string v2, "System"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    sget-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    const-string v1, "serif"

    const-string v2, "Serif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    sget-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    const-string v1, "sansserif"

    const-string v2, "SansSerif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    sget-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    const-string v1, "sans-serif"

    const-string v2, "SansSerif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    sget-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    const-string v1, "dialog"

    const-string v2, "SansSerif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    sget-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    const-string v1, "default"

    const-string v2, "SansSerif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    sget-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    const-string v1, "monospaced"

    const-string v2, "Monospaced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    sget-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    const-string v1, "monospace"

    const-string v2, "Monospaced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    sget-object v0, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    const-string v1, "dialoginput"

    const-string v2, "Monospaced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sun/javafx/font/LogicalFont;

    sput-object v0, Lcom/sun/javafx/font/LogicalFont;->logicalFonts:[Lcom/sun/javafx/font/LogicalFont;

    .line 443
    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 9

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, p1

    .local v1, "family":Ljava/lang/String;
    move v2, p2

    .local v2, "bold":Z
    move v3, p3

    .local v3, "italic":Z
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 401
    move-object v5, v0

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->strikeMap:Ljava/util/Map;

    .line 164
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->familyName:Ljava/lang/String;

    .line 165
    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lcom/sun/javafx/font/LogicalFont;->isBold:Z

    .line 166
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/sun/javafx/font/LogicalFont;->isItalic:Z

    .line 168
    move v5, v2

    if-nez v5, :cond_0

    move v5, v3

    if-nez v5, :cond_0

    .line 169
    move-object v5, v0

    const-string v6, "Regular"

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->styleName:Ljava/lang/String;

    .line 177
    :goto_0
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->familyName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->styleName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->fullName:Ljava/lang/String;

    .line 178
    sget-boolean v5, Lcom/sun/javafx/font/PrismFontFactory;->isLinux:Z

    if-eqz v5, :cond_3

    .line 179
    move-object v5, v1

    move v6, v2

    move v7, v3

    .line 180
    invoke-static {v5, v6, v7}, Lcom/sun/javafx/font/FontConfigManager;->getFontConfigFont(Ljava/lang/String;ZZ)Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move-result-object v5

    move-object v4, v5

    .line 181
    .local v4, "fcCompFont":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    move-object v5, v0

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fullName:Ljava/lang/String;

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->physicalFullName:Ljava/lang/String;

    .line 182
    move-object v5, v0

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FcCompFont;->firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

    iget-object v6, v6, Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;->fontFile:Ljava/lang/String;

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->physicalFileName:Ljava/lang/String;

    .line 183
    .line 186
    .end local v4    # "fcCompFont":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    :goto_1
    return-void

    .line 170
    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    move v5, v3

    if-nez v5, :cond_1

    .line 171
    move-object v5, v0

    const-string v6, "Bold"

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->styleName:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_1
    move v5, v2

    if-nez v5, :cond_2

    move v5, v3

    if-eqz v5, :cond_2

    .line 173
    move-object v5, v0

    const-string v6, "Italic"

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->styleName:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_2
    move-object v5, v0

    const-string v6, "Bold Italic"

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->styleName:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_3
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/LogicalFont;->familyName:Ljava/lang/String;

    invoke-static {v6}, Lcom/sun/javafx/font/PrismFontFactory;->getSystemFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/font/LogicalFont;->physicalFamily:Ljava/lang/String;

    goto :goto_1
.end method

.method static addFamilies(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "familyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v0

    const-string v2, "SansSerif"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 465
    move-object v1, v0

    const-string v2, "Serif"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 466
    move-object v1, v0

    const-string v2, "Monospaced"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 467
    move-object v1, v0

    const-string v2, "System"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 468
    return-void
.end method

.method static addFullNames(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "fullNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sun/javafx/font/LogicalFont;->buildFamilies()V

    .line 472
    const/4 v3, 0x0

    move v1, v3

    .local v1, "f":I
    :goto_0
    move v3, v1

    sget-object v4, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 473
    const/4 v3, 0x0

    move v2, v3

    .local v2, "n":I
    :goto_1
    move v3, v2

    sget-object v4, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    move v5, v1

    aget-object v4, v4, v5

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 474
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    move v5, v1

    aget-object v4, v4, v5

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 472
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method private static buildFamilies()V
    .locals 3

    .prologue
    .line 453
    sget-object v1, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 454
    const/4 v1, 0x4

    const/4 v2, 0x4

    filled-new-array {v1, v2}, [I

    move-result-object v2

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    move-object v0, v1

    .line 455
    .local v0, "tmpFamilies":[[Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "SansSerif"

    invoke-static {v1, v2}, Lcom/sun/javafx/font/LogicalFont;->buildFamily([Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    move-object v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "Serif"

    invoke-static {v1, v2}, Lcom/sun/javafx/font/LogicalFont;->buildFamily([Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    move-object v1, v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v2, "Monospaced"

    invoke-static {v1, v2}, Lcom/sun/javafx/font/LogicalFont;->buildFamily([Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    move-object v1, v0

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const-string v2, "System"

    invoke-static {v1, v2}, Lcom/sun/javafx/font/LogicalFont;->buildFamily([Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    .line 461
    :cond_0
    return-void
.end method

.method private static buildFamily([Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "fullNames":[Ljava/lang/String;
    move-object v1, p1

    .local v1, "family":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Regular"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 447
    move-object v2, v0

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Bold"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 448
    move-object v2, v0

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Italic"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 449
    move-object v2, v0

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Bold Italic"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 450
    return-void
.end method

.method private static getCanonicalFamilyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 78
    const-string v2, "SansSerif"

    move-object v0, v2

    .line 81
    .end local v0    # "name":Ljava/lang/String;
    .local v1, "lcName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 80
    .end local v1    # "lcName":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 81
    .restart local v1    # "lcName":Ljava/lang/String;
    sget-object v2, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method static getFontsInFamily(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "family":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/font/LogicalFont;->getCanonicalFamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 481
    .local v1, "canonicalFamily":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 482
    const/4 v2, 0x0

    move-object v0, v2

    .line 492
    .end local v0    # "family":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 484
    .restart local v0    # "family":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sun/javafx/font/LogicalFont;->buildFamilies()V

    .line 485
    move-object v2, v1

    const-string v3, "SansSerif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    sget-object v2, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0

    .line 487
    :cond_1
    move-object v2, v1

    const-string v3, "Serif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 488
    sget-object v2, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0

    .line 489
    :cond_2
    move-object v2, v1

    const-string v3, "Monospaced"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    sget-object v2, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0

    .line 492
    :cond_3
    sget-object v2, Lcom/sun/javafx/font/LogicalFont;->logFamilies:[[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object v0, v2

    goto :goto_0
.end method

.method private getLinkedFonts()V
    .locals 6

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/LogicalFont;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    if-nez v3, :cond_0

    .line 218
    sget-boolean v3, Lcom/sun/javafx/font/PrismFontFactory;->isLinux:Z

    if-eqz v3, :cond_1

    .line 219
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/LogicalFont;->familyName:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/font/LogicalFont;->isBold:Z

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/font/LogicalFont;->isItalic:Z

    .line 220
    invoke-static {v3, v4, v5}, Lcom/sun/javafx/font/FontConfigManager;->getFontConfigFont(Ljava/lang/String;ZZ)Lcom/sun/javafx/font/FontConfigManager$FcCompFont;

    move-result-object v3

    move-object v2, v3

    .line 222
    .local v2, "font":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sun/javafx/font/FontConfigManager;->getFileNames(Lcom/sun/javafx/font/FontConfigManager$FcCompFont;Z)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/font/LogicalFont;->linkedFontFiles:Ljava/util/ArrayList;

    .line 223
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sun/javafx/font/FontConfigManager;->getFontNames(Lcom/sun/javafx/font/FontConfigManager$FcCompFont;Z)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/font/LogicalFont;->linkedFontNames:Ljava/util/ArrayList;

    .line 224
    .line 229
    .end local v2    # "font":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->linkedFontFiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/javafx/font/FontResource;

    iput-object v4, v3, Lcom/sun/javafx/font/LogicalFont;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    .line 231
    :cond_0
    return-void

    .line 225
    :cond_1
    const-string v3, "Tahoma"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sun/javafx/font/PrismFontFactory;->getLinkedFonts(Ljava/lang/String;Z)[Ljava/util/ArrayList;

    move-result-object v3

    move-object v1, v3

    .line 226
    .local v1, "linkedFontInfo":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/sun/javafx/font/LogicalFont;->linkedFontFiles:Ljava/util/ArrayList;

    .line 227
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/sun/javafx/font/LogicalFont;->linkedFontNames:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static getLogicalFont(Ljava/lang/String;F)Lcom/sun/javafx/font/PGFont;
    .locals 12

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "fullName":Ljava/lang/String;
    move v1, p1

    .local v1, "size":F
    move-object v8, v0

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v2, v8

    .line 131
    .local v2, "spaceIndex":I
    move v8, v2

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    move v8, v2

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_1

    .line 132
    :cond_0
    const/4 v8, 0x0

    move-object v0, v8

    .line 153
    .end local v0    # "fullName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 134
    .restart local v0    # "fullName":Ljava/lang/String;
    :cond_1
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 135
    .local v3, "family":Ljava/lang/String;
    move-object v8, v3

    invoke-static {v8}, Lcom/sun/javafx/font/LogicalFont;->getCanonicalFamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 136
    .local v4, "canonicalFamily":Ljava/lang/String;
    move-object v8, v4

    if-nez v8, :cond_2

    .line 137
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 139
    :cond_2
    move-object v8, v0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 140
    .local v5, "style":Ljava/lang/String;
    const/4 v8, 0x0

    move v6, v8

    .local v6, "bold":Z
    const/4 v8, 0x0

    move v7, v8

    .line 141
    .local v7, "italic":Z
    move-object v8, v5

    const-string v9, "regular"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 153
    :goto_1
    move-object v8, v4

    move v9, v6

    move v10, v7

    move v11, v1

    invoke-static {v8, v9, v10, v11}, Lcom/sun/javafx/font/LogicalFont;->getLogicalFont(Ljava/lang/String;ZZF)Lcom/sun/javafx/font/PGFont;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 143
    :cond_3
    move-object v8, v5

    const-string v9, "bold"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 144
    const/4 v8, 0x1

    move v6, v8

    goto :goto_1

    .line 145
    :cond_4
    move-object v8, v5

    const-string v9, "italic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 146
    const/4 v8, 0x1

    move v7, v8

    goto :goto_1

    .line 147
    :cond_5
    move-object v8, v5

    const-string v9, "bold italic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 148
    const/4 v8, 0x1

    move v6, v8

    .line 149
    const/4 v8, 0x1

    move v7, v8

    goto :goto_1

    .line 151
    :cond_6
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method static getLogicalFont(Ljava/lang/String;ZZF)Lcom/sun/javafx/font/PGFont;
    .locals 13

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "familyName":Ljava/lang/String;
    move v1, p1

    .local v1, "bold":Z
    move v2, p2

    .local v2, "italic":Z
    move/from16 v3, p3

    .local v3, "size":F
    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/font/LogicalFont;->getCanonicalFamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 90
    .local v4, "canonicalFamilyName":Ljava/lang/String;
    move-object v7, v4

    if-nez v7, :cond_0

    .line 91
    const/4 v7, 0x0

    move-object v0, v7

    .line 116
    .end local v0    # "familyName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 94
    .restart local v0    # "familyName":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    move v5, v7

    .line 95
    .local v5, "fontIndex":I
    move-object v7, v4

    const-string v8, "SansSerif"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 96
    const/4 v7, 0x0

    move v5, v7

    .line 104
    :goto_1
    move v7, v1

    if-eqz v7, :cond_1

    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 107
    :cond_1
    move v7, v2

    if-eqz v7, :cond_2

    .line 108
    add-int/lit8 v5, v5, 0x2

    .line 111
    :cond_2
    sget-object v7, Lcom/sun/javafx/font/LogicalFont;->logicalFonts:[Lcom/sun/javafx/font/LogicalFont;

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 112
    .local v6, "font":Lcom/sun/javafx/font/LogicalFont;
    move-object v7, v6

    if-nez v7, :cond_3

    .line 113
    new-instance v7, Lcom/sun/javafx/font/LogicalFont;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move v10, v1

    move v11, v2

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/font/LogicalFont;-><init>(Ljava/lang/String;ZZ)V

    move-object v6, v7

    .line 114
    sget-object v7, Lcom/sun/javafx/font/LogicalFont;->logicalFonts:[Lcom/sun/javafx/font/LogicalFont;

    move v8, v5

    move-object v9, v6

    aput-object v9, v7, v8

    .line 116
    :cond_3
    new-instance v7, Lcom/sun/javafx/font/PrismFont;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v6

    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/javafx/font/LogicalFont;->getFullName()Ljava/lang/String;

    move-result-object v10

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/font/PrismFont;-><init>(Lcom/sun/javafx/font/FontResource;Ljava/lang/String;F)V

    move-object v0, v7

    goto :goto_0

    .line 97
    .end local v6    # "font":Lcom/sun/javafx/font/LogicalFont;
    :cond_4
    move-object v7, v4

    const-string v8, "Serif"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 98
    const/4 v7, 0x4

    move v5, v7

    goto :goto_1

    .line 99
    :cond_5
    move-object v7, v4

    const-string v8, "Monospaced"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 100
    const/16 v7, 0x8

    move v5, v7

    goto :goto_1

    .line 102
    :cond_6
    const/16 v7, 0xc

    move v5, v7

    goto :goto_1
.end method

.method private getSlot0Resource()Lcom/sun/javafx/font/FontResource;
    .locals 8

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/LogicalFont;->slot0FontResource:Lcom/sun/javafx/font/FontResource;

    if-nez v2, :cond_0

    .line 192
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v2

    move-object v1, v2

    .line 193
    .local v1, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/LogicalFont;->physicalFamily:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 194
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->physicalFamily:Ljava/lang/String;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/font/LogicalFont;->isBold:Z

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/font/LogicalFont;->isItalic:Z

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;ZZZ)Lcom/sun/javafx/font/FontResource;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/font/LogicalFont;->slot0FontResource:Lcom/sun/javafx/font/FontResource;

    .line 203
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/LogicalFont;->slot0FontResource:Lcom/sun/javafx/font/FontResource;

    if-nez v2, :cond_0

    .line 204
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/PrismFontFactory;->getDefaultFontResource(Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/font/LogicalFont;->slot0FontResource:Lcom/sun/javafx/font/FontResource;

    .line 207
    .end local v1    # "factory":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/LogicalFont;->slot0FontResource:Lcom/sun/javafx/font/FontResource;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0

    .line 198
    .restart local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    .restart local v1    # "factory":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->physicalFullName:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/LogicalFont;->physicalFileName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/font/LogicalFont;->slot0FontResource:Lcom/sun/javafx/font/FontResource;

    goto :goto_0
.end method

.method static isLogicalFont(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v2, v0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 72
    .local v1, "spaceIndex":I
    move v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 73
    :cond_0
    sget-object v2, Lcom/sun/javafx/font/LogicalFont;->canonicalFamilyMap:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 499
    const/4 v3, 0x0

    move v0, v3

    .line 506
    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    :goto_0
    return v0

    .line 501
    .restart local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/font/LogicalFont;

    if-nez v3, :cond_1

    .line 502
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 504
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/font/LogicalFont;

    move-object v2, v3

    .line 506
    .local v2, "other":Lcom/sun/javafx/font/LogicalFont;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/LogicalFont;->fullName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getAdvance(IF)F
    .locals 9

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move v1, p1

    .local v1, "glyphCode":I
    move v2, p2

    .local v2, "size":F
    move v6, v1

    const/16 v7, 0x18

    ushr-int/lit8 v6, v6, 0x18

    move v3, v6

    .line 387
    .local v3, "slot":I
    move v6, v1

    const v7, 0xffffff

    and-int/2addr v6, v7

    move v4, v6

    .line 388
    .local v4, "slotglyphCode":I
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/font/LogicalFont;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v6

    move-object v5, v6

    .line 389
    .local v5, "slotResource":Lcom/sun/javafx/font/FontResource;
    move-object v6, v5

    move v7, v4

    move v8, v2

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/font/FontResource;->getAdvance(IF)F

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return v0
.end method

.method public getDefaultAAMode()I
    .locals 2

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/LogicalFont;->getSlot0Resource()Lcom/sun/javafx/font/FontResource;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getDefaultAAMode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->familyName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getFeatures()I
    .locals 3

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/LogicalFont;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getFeatures()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/LogicalFont;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->getFileName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->fullName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getGlyphBoundingBox(IF[F)[F
    .locals 11

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move v1, p1

    .local v1, "glyphCode":I
    move v2, p2

    .local v2, "size":F
    move-object v3, p3

    .local v3, "retArr":[F
    move v7, v1

    const/16 v8, 0x18

    ushr-int/lit8 v7, v7, 0x18

    move v4, v7

    .line 380
    .local v4, "slot":I
    move v7, v1

    const v8, 0xffffff

    and-int/2addr v7, v8

    move v5, v7

    .line 381
    .local v5, "slotglyphCode":I
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/font/LogicalFont;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v7

    move-object v6, v7

    .line 382
    .local v6, "slotResource":Lcom/sun/javafx/font/FontResource;
    move-object v7, v6

    move v8, v5

    move v9, v2

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/sun/javafx/font/FontResource;->getGlyphBoundingBox(IF[F)[F

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;
    .locals 6

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

    if-nez v1, :cond_0

    .line 396
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/font/CompositeGlyphMapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/font/CompositeGlyphMapper;-><init>(Lcom/sun/javafx/font/CompositeFontResource;)V

    iput-object v2, v1, Lcom/sun/javafx/font/LogicalFont;->mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

    .line 398
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->mapper:Lcom/sun/javafx/font/CompositeGlyphMapper;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getLocaleFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->familyName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getLocaleFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->fullName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getLocaleStyleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->styleName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getNumSlots()I
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/font/LogicalFont;->getLinkedFonts()V

    .line 235
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/LogicalFont;->linkedFontFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    .line 236
    .local v1, "num":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    if-eqz v2, :cond_0

    .line 237
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v3, v3

    add-int/2addr v2, v3

    move v1, v2

    .line 239
    :cond_0
    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return v0
.end method

.method public getPSName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->fullName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getPeer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getSlotForFont(Ljava/lang/String;)I
    .locals 13

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, p1

    .local v1, "fontName":Ljava/lang/String;
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/font/LogicalFont;->getLinkedFonts()V

    .line 244
    const/4 v7, 0x1

    move v2, v7

    .line 245
    .local v2, "i":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->linkedFontNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 246
    .local v4, "linkedFontName":Ljava/lang/String;
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 247
    move v7, v2

    move v0, v7

    .line 291
    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    .end local v4    # "linkedFontName":Ljava/lang/String;
    :goto_1
    return v0

    .line 249
    .restart local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    .restart local v4    # "linkedFontName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 250
    goto :goto_0

    .line 251
    .end local v4    # "linkedFontName":Ljava/lang/String;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    if-eqz v7, :cond_3

    .line 252
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_3

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 253
    .local v6, "nativeFallback":Lcom/sun/javafx/font/FontResource;
    move-object v7, v1

    move-object v8, v6

    invoke-interface {v8}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 254
    move v7, v2

    move v0, v7

    goto :goto_1

    .line 256
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 252
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 260
    .end local v6    # "nativeFallback":Lcom/sun/javafx/font/FontResource;
    :cond_3
    move v7, v2

    const/16 v8, 0x7e

    if-lt v7, v8, :cond_5

    .line 266
    sget-boolean v7, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v7, :cond_4

    .line 267
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "\tToo many font fallbacks!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    :cond_4
    const/4 v7, -0x1

    move v0, v7

    goto :goto_1

    .line 271
    :cond_5
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v7

    move-object v3, v7

    .line 272
    .local v3, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v7, v3

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v7

    move-object v4, v7

    .line 273
    .local v4, "fr":Lcom/sun/javafx/font/FontResource;
    move-object v7, v4

    if-nez v7, :cond_7

    .line 274
    sget-boolean v7, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v7, :cond_6

    .line 275
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t Font name not supported \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\"."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    :cond_6
    const/4 v7, -0x1

    move v0, v7

    goto :goto_1

    .line 282
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    if-nez v7, :cond_8

    .line 283
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/sun/javafx/font/FontResource;

    move-object v5, v7

    .line 288
    .local v5, "tmp":[Lcom/sun/javafx/font/FontResource;
    :goto_3
    move-object v7, v5

    move-object v8, v5

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v4

    aput-object v9, v7, v8

    .line 289
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    .line 291
    move v7, v2

    move v0, v7

    goto/16 :goto_1

    .line 285
    .end local v5    # "tmp":[Lcom/sun/javafx/font/FontResource;
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Lcom/sun/javafx/font/FontResource;

    move-object v5, v7

    .line 286
    .restart local v5    # "tmp":[Lcom/sun/javafx/font/FontResource;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public getSlotResource(I)Lcom/sun/javafx/font/FontResource;
    .locals 10

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move v1, p1

    .local v1, "slot":I
    move v4, v1

    if-nez v4, :cond_0

    .line 296
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/font/LogicalFont;->getSlot0Resource()Lcom/sun/javafx/font/FontResource;

    move-result-object v4

    move-object v0, v4

    .line 317
    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    :goto_0
    return-object v0

    .line 298
    .restart local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/font/LogicalFont;->getLinkedFonts()V

    .line 299
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    .line 300
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/LogicalFont;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 301
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/LogicalFont;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v5, v5

    sub-int/2addr v4, v5

    move v1, v4

    .line 302
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    if-eqz v4, :cond_1

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 303
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 305
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->nativeFallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0

    .line 307
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    .line 308
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->linkedFontFiles:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 309
    .local v2, "file":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->linkedFontNames:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 310
    .local v3, "name":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    .line 311
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v6

    move-object v7, v3

    move-object v8, v2

    const/4 v9, 0x0

    .line 312
    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/javafx/font/PrismFontFactory;->getFontResource(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/javafx/font/FontResource;

    move-result-object v6

    aput-object v6, v4, v5

    .line 313
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    .line 314
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/font/LogicalFont;->getSlot0Resource()Lcom/sun/javafx/font/FontResource;

    move-result-object v6

    aput-object v6, v4, v5

    .line 317
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/LogicalFont;->fallbacks:[Lcom/sun/javafx/font/FontResource;

    move v5, v1

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0
.end method

.method public getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;
    .locals 7

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move v1, p1

    .local v1, "size":F
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/font/LogicalFont;->getDefaultAAMode()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/font/LogicalFont;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;
    .locals 15

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move/from16 v1, p1

    .local v1, "size":F
    move-object/from16 v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v3, p3

    .local v3, "aaMode":I
    new-instance v7, Lcom/sun/javafx/font/FontStrikeDesc;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move v9, v1

    move-object v10, v2

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/font/FontStrikeDesc;-><init>(FLcom/sun/javafx/geom/transform/BaseTransform;I)V

    move-object v4, v7

    .line 419
    .local v4, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->strikeMap:Ljava/util/Map;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    move-object v5, v7

    .line 420
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/FontStrike;>;"
    const/4 v7, 0x0

    move-object v6, v7

    .line 422
    .local v6, "strike":Lcom/sun/javafx/font/CompositeStrike;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 423
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/font/CompositeStrike;

    move-object v6, v7

    .line 425
    :cond_0
    move-object v7, v6

    if-nez v7, :cond_1

    .line 426
    new-instance v7, Lcom/sun/javafx/font/CompositeStrike;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move v10, v1

    move-object v11, v2

    move v12, v3

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/sun/javafx/font/CompositeStrike;-><init>(Lcom/sun/javafx/font/CompositeFontResource;FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)V

    move-object v6, v7

    .line 427
    move-object v7, v6

    iget-object v7, v7, Lcom/sun/javafx/font/CompositeStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    if-eqz v7, :cond_2

    .line 428
    move-object v7, v6

    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/font/CompositeStrike;->disposer:Lcom/sun/javafx/font/DisposerRecord;

    invoke-static {v7, v8}, Lcom/sun/javafx/font/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/javafx/font/DisposerRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    move-object v5, v7

    .line 432
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/LogicalFont;->strikeMap:Ljava/util/Map;

    move-object v8, v4

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 434
    :cond_1
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0

    .line 430
    .restart local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    :cond_2
    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v5, v7

    goto :goto_0
.end method

.method public getStrikeMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrikeDesc;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/FontStrike;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->strikeMap:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/LogicalFont;->styleName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/LogicalFont;->hash:I

    if-eqz v1, :cond_0

    .line 513
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/LogicalFont;->hash:I

    move v0, v1

    .line 517
    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    :goto_0
    return v0

    .line 516
    .restart local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/LogicalFont;->fullName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/font/LogicalFont;->hash:I

    .line 517
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/LogicalFont;->hash:I

    move v0, v1

    goto :goto_0
.end method

.method public isBold()Z
    .locals 3

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/LogicalFont;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->isBold()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return v0
.end method

.method public isEmbeddedFont()Z
    .locals 3

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/LogicalFont;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->isEmbeddedFont()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return v0
.end method

.method public isItalic()Z
    .locals 3

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/font/LogicalFont;->getSlotResource(I)Lcom/sun/javafx/font/FontResource;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/javafx/font/FontResource;->isItalic()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/LogicalFont;
    return v0
.end method

.method public setPeer(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/LogicalFont;
    move-object v1, p1

    .local v1, "peer":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
