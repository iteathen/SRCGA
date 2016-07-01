.class public abstract Lcom/sun/javafx/font/PrismFontFile;
.super Ljava/lang/Object;
.source "PrismFontFile.java"

# interfaces
.implements Lcom/sun/javafx/font/FontResource;
.implements Lcom/sun/javafx/font/FontConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;,
        Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
    }
.end annotation


# static fields
.field static final EMPTY_BOUNDS:[I

.field public static final FAMILY_NAME_ID:I = 0x1

.field public static final FULL_NAME_ID:I = 0x4

.field public static final MACROMAN_ENGLISH_LANG:I = 0x0

.field public static final MACROMAN_SPECIFIC_ID:I = 0x0

.field private static final MACSTYLE_BOLD_BIT:I = 0x1

.field private static final MACSTYLE_ITALIC_BIT:I = 0x2

.field public static final MAC_PLATFORM_ID:I = 0x1

.field public static final MS_ENGLISH_LOCALE_ID:S = 0x409s

.field public static final MS_PLATFORM_ID:I = 0x3

.field public static final PS_NAME_ID:I = 0x6

.field public static final STYLE_NAME_ID:I = 0x2

.field private static final fsSelectionBoldBit:I = 0x20

.field private static final fsSelectionItalicBit:I = 0x1

.field private static lcidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field static nameLocaleID:S


# instance fields
.field advanceWidths:[C

.field private ascent:F

.field bbCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private descent:F

.field directoryCount:I

.field familyName:Ljava/lang/String;

.field filename:Ljava/lang/String;

.field filereader:Lcom/sun/javafx/font/FontFileReader;

.field filesize:I

.field fontIndex:I

.field private fontInstallationType:I

.field fullName:Ljava/lang/String;

.field indexToLocFormat:S

.field private isBold:Z

.field isCFF:Z

.field isCopy:Z

.field isDecoded:Z

.field isEmbedded:Z

.field private isItalic:Z

.field isRegistered:Z

.field isTracked:Z

.field private linegap:F

.field localeFamilyName:Ljava/lang/String;

.field localeFullName:Ljava/lang/String;

.field localeStyleName:Ljava/lang/String;

.field private mapper:Lcom/sun/javafx/font/OpenTypeGlyphMapper;

.field numGlyphs:I

.field private numHMetrics:I

.field numTables:I

.field private peer:Ljava/lang/Object;

.field psName:Ljava/lang/String;

.field strikeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrikeDesc;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/PrismFontStrike;",
            ">;>;"
        }
    .end annotation
.end field

.field private styleMetrics:[F

.field styleName:Ljava/lang/String;

.field tableDirectory:[Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

.field private upem:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/javafx/font/PrismFontFile;->EMPTY_BOUNDS:[I

    .line 1059
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFile;->getSystemLCID()S

    move-result v0

    sput-short v0, Lcom/sun/javafx/font/PrismFontFile;->nameLocaleID:S

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "filename":Ljava/lang/String;
    move v3, p3

    .local v3, "fIndex":I
    move/from16 v4, p4

    .local v4, "register":Z
    move/from16 v5, p5

    .local v5, "embedded":Z
    move/from16 v6, p6

    .local v6, "copy":Z
    move/from16 v7, p7

    .local v7, "tracked":Z
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Lcom/sun/javafx/font/PrismFontFile;->fontInstallationType:I

    .line 78
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Lcom/sun/javafx/font/PrismFontFile;->numGlyphs:I

    .line 82
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/font/PrismFontFile;->isEmbedded:Z

    .line 83
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/font/PrismFontFile;->isCopy:Z

    .line 84
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/font/PrismFontFile;->isTracked:Z

    .line 85
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/font/PrismFontFile;->isDecoded:Z

    .line 86
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sun/javafx/font/PrismFontFile;->isRegistered:Z

    .line 92
    move-object v8, v0

    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v9, v8, Lcom/sun/javafx/font/PrismFontFile;->strikeMap:Ljava/util/Map;

    .line 288
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/javafx/font/PrismFontFile;->bbCache:Ljava/util/HashMap;

    .line 364
    move-object v8, v0

    const/4 v9, 0x1

    iput v9, v8, Lcom/sun/javafx/font/PrismFontFile;->directoryCount:I

    .line 1069
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/javafx/font/PrismFontFile;->mapper:Lcom/sun/javafx/font/OpenTypeGlyphMapper;

    .line 1082
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/javafx/font/PrismFontFile;->advanceWidths:[C

    .line 98
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    .line 99
    move-object v8, v0

    move v9, v4

    iput-boolean v9, v8, Lcom/sun/javafx/font/PrismFontFile;->isRegistered:Z

    .line 100
    move-object v8, v0

    move v9, v5

    iput-boolean v9, v8, Lcom/sun/javafx/font/PrismFontFile;->isEmbedded:Z

    .line 101
    move-object v8, v0

    move v9, v6

    iput-boolean v9, v8, Lcom/sun/javafx/font/PrismFontFile;->isCopy:Z

    .line 102
    move-object v8, v0

    move v9, v7

    iput-boolean v9, v8, Lcom/sun/javafx/font/PrismFontFile;->isTracked:Z

    .line 103
    move-object v8, v0

    move-object v9, v1

    move v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/font/PrismFontFile;->init(Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/font/PrismFontFile;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontFile;->lambda$disposeOnShutdown$225()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/lang/String;",
            "S)V"
        }
    .end annotation

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Short;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "value":S
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 865
    return-void
.end method

.method private checkCMAP()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v11, v0

    const v12, 0x636d6170

    invoke-virtual {v11, v12}, Lcom/sun/javafx/font/PrismFontFile;->getDirectoryEntry(I)Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move-result-object v11

    move-object v1, v11

    .line 832
    .local v1, "cmapDE":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    move-object v11, v1

    if-eqz v11, :cond_5

    .line 833
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    const/4 v12, 0x4

    if-ge v11, v12, :cond_0

    .line 834
    new-instance v11, Ljava/lang/Exception;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const-string v13, "Invalid cmap table length"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 836
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->offset:I

    const/4 v13, 0x4

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v11

    move-object v2, v11

    .line 837
    .local v2, "cmapTableHeader":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v11

    move v3, v11

    .line 838
    .local v3, "version":S
    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v11

    move v4, v11

    .line 839
    .local v4, "numberSubTables":S
    move v11, v4

    const/16 v12, 0x8

    mul-int/lit8 v11, v11, 0x8

    move v5, v11

    .line 840
    .local v5, "indexLength":I
    move v11, v4

    if-lez v11, :cond_1

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    move v12, v5

    const/4 v13, 0x4

    add-int/lit8 v12, v12, 0x4

    if-ge v11, v12, :cond_2

    .line 841
    :cond_1
    new-instance v11, Ljava/lang/Exception;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const-string v13, "Invalid cmap subtables count"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 843
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->offset:I

    const/4 v13, 0x4

    add-int/lit8 v12, v12, 0x4

    move v13, v5

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v11

    move-object v6, v11

    .line 844
    .local v6, "cmapTableIndex":Lcom/sun/javafx/font/FontFileReader$Buffer;
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    :goto_0
    move v11, v7

    move v12, v4

    if-ge v11, v12, :cond_5

    .line 845
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v11

    move v8, v11

    .line 846
    .local v8, "platformID":S
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v11

    move v9, v11

    .line 847
    .local v9, "encodingID":S
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v11

    move v10, v11

    .line 848
    .local v10, "offset":I
    move v11, v10

    if-ltz v11, :cond_3

    move v11, v10

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    if-lt v11, v12, :cond_4

    .line 849
    :cond_3
    new-instance v11, Ljava/lang/Exception;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const-string v13, "Invalid cmap subtable offset"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 844
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 853
    .end local v2    # "cmapTableHeader":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .end local v3    # "version":S
    .end local v4    # "numberSubTables":S
    .end local v5    # "indexLength":I
    .end local v6    # "cmapTableIndex":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .end local v7    # "i":I
    .end local v8    # "platformID":S
    .end local v9    # "encodingID":S
    .end local v10    # "offset":I
    :cond_5
    return-void
.end method

.method private static declared-synchronized createLCIDMap()V
    .locals 6

    .prologue
    .line 868
    const-class v4, Lcom/sun/javafx/font/PrismFontFile;

    monitor-enter v4

    :try_start_0
    sget-object v1, Lcom/sun/javafx/font/PrismFontFile;->lcidMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 869
    .line 1026
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Short;>;"
    :goto_0
    monitor-exit v4

    return-void

    .line 872
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Short;>;"
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v1

    .line 873
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Short;>;"
    move-object v1, v0

    const-string v2, "ar"

    const/16 v3, 0x401

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 874
    move-object v1, v0

    const-string v2, "bg"

    const/16 v3, 0x402

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 875
    move-object v1, v0

    const-string v2, "ca"

    const/16 v3, 0x403

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 876
    move-object v1, v0

    const-string v2, "zh"

    const/16 v3, 0x404

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 877
    move-object v1, v0

    const-string v2, "cs"

    const/16 v3, 0x405

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 878
    move-object v1, v0

    const-string v2, "da"

    const/16 v3, 0x406

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 879
    move-object v1, v0

    const-string v2, "de"

    const/16 v3, 0x407

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 880
    move-object v1, v0

    const-string v2, "el"

    const/16 v3, 0x408

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 881
    move-object v1, v0

    const-string v2, "es"

    const/16 v3, 0x40a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 882
    move-object v1, v0

    const-string v2, "fi"

    const/16 v3, 0x40b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 883
    move-object v1, v0

    const-string v2, "fr"

    const/16 v3, 0x40c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 884
    move-object v1, v0

    const-string v2, "iw"

    const/16 v3, 0x40d

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 885
    move-object v1, v0

    const-string v2, "hu"

    const/16 v3, 0x40e

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 886
    move-object v1, v0

    const-string v2, "is"

    const/16 v3, 0x40f

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 887
    move-object v1, v0

    const-string v2, "it"

    const/16 v3, 0x410

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 888
    move-object v1, v0

    const-string v2, "ja"

    const/16 v3, 0x411

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 889
    move-object v1, v0

    const-string v2, "ko"

    const/16 v3, 0x412

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 890
    move-object v1, v0

    const-string v2, "nl"

    const/16 v3, 0x413

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 891
    move-object v1, v0

    const-string v2, "no"

    const/16 v3, 0x414

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 892
    move-object v1, v0

    const-string v2, "pl"

    const/16 v3, 0x415

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 893
    move-object v1, v0

    const-string v2, "pt"

    const/16 v3, 0x416

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 894
    move-object v1, v0

    const-string v2, "rm"

    const/16 v3, 0x417

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 895
    move-object v1, v0

    const-string v2, "ro"

    const/16 v3, 0x418

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 896
    move-object v1, v0

    const-string v2, "ru"

    const/16 v3, 0x419

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 897
    move-object v1, v0

    const-string v2, "hr"

    const/16 v3, 0x41a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 898
    move-object v1, v0

    const-string v2, "sk"

    const/16 v3, 0x41b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 899
    move-object v1, v0

    const-string v2, "sq"

    const/16 v3, 0x41c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 900
    move-object v1, v0

    const-string v2, "sv"

    const/16 v3, 0x41d

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 901
    move-object v1, v0

    const-string v2, "th"

    const/16 v3, 0x41e

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 902
    move-object v1, v0

    const-string v2, "tr"

    const/16 v3, 0x41f

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 903
    move-object v1, v0

    const-string v2, "ur"

    const/16 v3, 0x420

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 904
    move-object v1, v0

    const-string v2, "in"

    const/16 v3, 0x421

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 905
    move-object v1, v0

    const-string v2, "uk"

    const/16 v3, 0x422

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 906
    move-object v1, v0

    const-string v2, "be"

    const/16 v3, 0x423

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 907
    move-object v1, v0

    const-string v2, "sl"

    const/16 v3, 0x424

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 908
    move-object v1, v0

    const-string v2, "et"

    const/16 v3, 0x425

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 909
    move-object v1, v0

    const-string v2, "lv"

    const/16 v3, 0x426

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 910
    move-object v1, v0

    const-string v2, "lt"

    const/16 v3, 0x427

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 911
    move-object v1, v0

    const-string v2, "fa"

    const/16 v3, 0x429

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 912
    move-object v1, v0

    const-string v2, "vi"

    const/16 v3, 0x42a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 913
    move-object v1, v0

    const-string v2, "hy"

    const/16 v3, 0x42b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 914
    move-object v1, v0

    const-string v2, "eu"

    const/16 v3, 0x42d

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 915
    move-object v1, v0

    const-string v2, "mk"

    const/16 v3, 0x42f

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 916
    move-object v1, v0

    const-string v2, "tn"

    const/16 v3, 0x432

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 917
    move-object v1, v0

    const-string v2, "xh"

    const/16 v3, 0x434

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 918
    move-object v1, v0

    const-string v2, "zu"

    const/16 v3, 0x435

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 919
    move-object v1, v0

    const-string v2, "af"

    const/16 v3, 0x436

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 920
    move-object v1, v0

    const-string v2, "ka"

    const/16 v3, 0x437

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 921
    move-object v1, v0

    const-string v2, "fo"

    const/16 v3, 0x438

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 922
    move-object v1, v0

    const-string v2, "hi"

    const/16 v3, 0x439

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 923
    move-object v1, v0

    const-string v2, "mt"

    const/16 v3, 0x43a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 924
    move-object v1, v0

    const-string v2, "se"

    const/16 v3, 0x43b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 925
    move-object v1, v0

    const-string v2, "gd"

    const/16 v3, 0x43c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 926
    move-object v1, v0

    const-string v2, "ms"

    const/16 v3, 0x43e

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 927
    move-object v1, v0

    const-string v2, "kk"

    const/16 v3, 0x43f

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 928
    move-object v1, v0

    const-string v2, "ky"

    const/16 v3, 0x440

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 929
    move-object v1, v0

    const-string v2, "sw"

    const/16 v3, 0x441

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 930
    move-object v1, v0

    const-string v2, "tt"

    const/16 v3, 0x444

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 931
    move-object v1, v0

    const-string v2, "bn"

    const/16 v3, 0x445

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 932
    move-object v1, v0

    const-string v2, "pa"

    const/16 v3, 0x446

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 933
    move-object v1, v0

    const-string v2, "gu"

    const/16 v3, 0x447

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 934
    move-object v1, v0

    const-string v2, "ta"

    const/16 v3, 0x449

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 935
    move-object v1, v0

    const-string v2, "te"

    const/16 v3, 0x44a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 936
    move-object v1, v0

    const-string v2, "kn"

    const/16 v3, 0x44b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 937
    move-object v1, v0

    const-string v2, "ml"

    const/16 v3, 0x44c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 938
    move-object v1, v0

    const-string v2, "mr"

    const/16 v3, 0x44e

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 939
    move-object v1, v0

    const-string v2, "sa"

    const/16 v3, 0x44f

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 940
    move-object v1, v0

    const-string v2, "mn"

    const/16 v3, 0x450

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 941
    move-object v1, v0

    const-string v2, "cy"

    const/16 v3, 0x452

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 942
    move-object v1, v0

    const-string v2, "gl"

    const/16 v3, 0x456

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 943
    move-object v1, v0

    const-string v2, "dv"

    const/16 v3, 0x465

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 944
    move-object v1, v0

    const-string v2, "qu"

    const/16 v3, 0x46b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 945
    move-object v1, v0

    const-string v2, "mi"

    const/16 v3, 0x481

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 946
    move-object v1, v0

    const-string v2, "ar_IQ"

    const/16 v3, 0x801

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 947
    move-object v1, v0

    const-string v2, "zh_CN"

    const/16 v3, 0x804

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 948
    move-object v1, v0

    const-string v2, "de_CH"

    const/16 v3, 0x807

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 949
    move-object v1, v0

    const-string v2, "en_GB"

    const/16 v3, 0x809

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 950
    move-object v1, v0

    const-string v2, "es_MX"

    const/16 v3, 0x80a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 951
    move-object v1, v0

    const-string v2, "fr_BE"

    const/16 v3, 0x80c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 952
    move-object v1, v0

    const-string v2, "it_CH"

    const/16 v3, 0x810

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 953
    move-object v1, v0

    const-string v2, "nl_BE"

    const/16 v3, 0x813

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 954
    move-object v1, v0

    const-string v2, "no_NO_NY"

    const/16 v3, 0x814

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 955
    move-object v1, v0

    const-string v2, "pt_PT"

    const/16 v3, 0x816

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 956
    move-object v1, v0

    const-string v2, "ro_MD"

    const/16 v3, 0x818

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 957
    move-object v1, v0

    const-string v2, "ru_MD"

    const/16 v3, 0x819

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 958
    move-object v1, v0

    const-string v2, "sr_CS"

    const/16 v3, 0x81a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 959
    move-object v1, v0

    const-string v2, "sv_FI"

    const/16 v3, 0x81d

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 960
    move-object v1, v0

    const-string v2, "az_AZ"

    const/16 v3, 0x82c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 961
    move-object v1, v0

    const-string v2, "se_SE"

    const/16 v3, 0x83b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 962
    move-object v1, v0

    const-string v2, "ga_IE"

    const/16 v3, 0x83c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 963
    move-object v1, v0

    const-string v2, "ms_BN"

    const/16 v3, 0x83e

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 964
    move-object v1, v0

    const-string v2, "uz_UZ"

    const/16 v3, 0x843

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 965
    move-object v1, v0

    const-string v2, "qu_EC"

    const/16 v3, 0x86b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 966
    move-object v1, v0

    const-string v2, "ar_EG"

    const/16 v3, 0xc01

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 967
    move-object v1, v0

    const-string v2, "zh_HK"

    const/16 v3, 0xc04

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 968
    move-object v1, v0

    const-string v2, "de_AT"

    const/16 v3, 0xc07

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 969
    move-object v1, v0

    const-string v2, "en_AU"

    const/16 v3, 0xc09

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 970
    move-object v1, v0

    const-string v2, "fr_CA"

    const/16 v3, 0xc0c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 971
    move-object v1, v0

    const-string v2, "sr_CS"

    const/16 v3, 0xc1a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 972
    move-object v1, v0

    const-string v2, "se_FI"

    const/16 v3, 0xc3b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 973
    move-object v1, v0

    const-string v2, "qu_PE"

    const/16 v3, 0xc6b

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 974
    move-object v1, v0

    const-string v2, "ar_LY"

    const/16 v3, 0x1001

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 975
    move-object v1, v0

    const-string v2, "zh_SG"

    const/16 v3, 0x1004

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 976
    move-object v1, v0

    const-string v2, "de_LU"

    const/16 v3, 0x1007

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 977
    move-object v1, v0

    const-string v2, "en_CA"

    const/16 v3, 0x1009

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 978
    move-object v1, v0

    const-string v2, "es_GT"

    const/16 v3, 0x100a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 979
    move-object v1, v0

    const-string v2, "fr_CH"

    const/16 v3, 0x100c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 980
    move-object v1, v0

    const-string v2, "hr_BA"

    const/16 v3, 0x101a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 981
    move-object v1, v0

    const-string v2, "ar_DZ"

    const/16 v3, 0x1401

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 982
    move-object v1, v0

    const-string v2, "zh_MO"

    const/16 v3, 0x1404

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 983
    move-object v1, v0

    const-string v2, "de_LI"

    const/16 v3, 0x1407

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 984
    move-object v1, v0

    const-string v2, "en_NZ"

    const/16 v3, 0x1409

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 985
    move-object v1, v0

    const-string v2, "es_CR"

    const/16 v3, 0x140a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 986
    move-object v1, v0

    const-string v2, "fr_LU"

    const/16 v3, 0x140c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 987
    move-object v1, v0

    const-string v2, "bs_BA"

    const/16 v3, 0x141a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 988
    move-object v1, v0

    const-string v2, "ar_MA"

    const/16 v3, 0x1801

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 989
    move-object v1, v0

    const-string v2, "en_IE"

    const/16 v3, 0x1809

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 990
    move-object v1, v0

    const-string v2, "es_PA"

    const/16 v3, 0x180a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 991
    move-object v1, v0

    const-string v2, "fr_MC"

    const/16 v3, 0x180c

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 992
    move-object v1, v0

    const-string v2, "sr_BA"

    const/16 v3, 0x181a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 993
    move-object v1, v0

    const-string v2, "ar_TN"

    const/16 v3, 0x1c01

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 994
    move-object v1, v0

    const-string v2, "en_ZA"

    const/16 v3, 0x1c09

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 995
    move-object v1, v0

    const-string v2, "es_DO"

    const/16 v3, 0x1c0a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 996
    move-object v1, v0

    const-string v2, "sr_BA"

    const/16 v3, 0x1c1a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 997
    move-object v1, v0

    const-string v2, "ar_OM"

    const/16 v3, 0x2001

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 998
    move-object v1, v0

    const-string v2, "en_JM"

    const/16 v3, 0x2009

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 999
    move-object v1, v0

    const-string v2, "es_VE"

    const/16 v3, 0x200a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1000
    move-object v1, v0

    const-string v2, "ar_YE"

    const/16 v3, 0x2401

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1001
    move-object v1, v0

    const-string v2, "es_CO"

    const/16 v3, 0x240a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1002
    move-object v1, v0

    const-string v2, "ar_SY"

    const/16 v3, 0x2801

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1003
    move-object v1, v0

    const-string v2, "en_BZ"

    const/16 v3, 0x2809

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1004
    move-object v1, v0

    const-string v2, "es_PE"

    const/16 v3, 0x280a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1005
    move-object v1, v0

    const-string v2, "ar_JO"

    const/16 v3, 0x2c01

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1006
    move-object v1, v0

    const-string v2, "en_TT"

    const/16 v3, 0x2c09

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1007
    move-object v1, v0

    const-string v2, "es_AR"

    const/16 v3, 0x2c0a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1008
    move-object v1, v0

    const-string v2, "ar_LB"

    const/16 v3, 0x3001

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1009
    move-object v1, v0

    const-string v2, "en_ZW"

    const/16 v3, 0x3009

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1010
    move-object v1, v0

    const-string v2, "es_EC"

    const/16 v3, 0x300a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1011
    move-object v1, v0

    const-string v2, "ar_KW"

    const/16 v3, 0x3401

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1012
    move-object v1, v0

    const-string v2, "en_PH"

    const/16 v3, 0x3409

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1013
    move-object v1, v0

    const-string v2, "es_CL"

    const/16 v3, 0x340a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1014
    move-object v1, v0

    const-string v2, "ar_AE"

    const/16 v3, 0x3801

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1015
    move-object v1, v0

    const-string v2, "es_UY"

    const/16 v3, 0x380a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1016
    move-object v1, v0

    const-string v2, "ar_BH"

    const/16 v3, 0x3c01

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1017
    move-object v1, v0

    const-string v2, "es_PY"

    const/16 v3, 0x3c0a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1018
    move-object v1, v0

    const-string v2, "ar_QA"

    const/16 v3, 0x4001

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1019
    move-object v1, v0

    const-string v2, "es_BO"

    const/16 v3, 0x400a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1020
    move-object v1, v0

    const-string v2, "es_SV"

    const/16 v3, 0x440a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1021
    move-object v1, v0

    const-string v2, "es_HN"

    const/16 v3, 0x480a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1022
    move-object v1, v0

    const-string v2, "es_NI"

    const/16 v3, 0x4c0a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1023
    move-object v1, v0

    const-string v2, "es_PR"

    const/16 v3, 0x500a

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->addLCIDMapEntry(Ljava/util/Map;Ljava/lang/String;S)V

    .line 1025
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/font/PrismFontFile;->lcidMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    goto/16 :goto_0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Short;>;"
    throw v0
.end method

.method private static getLCIDFromLocale(Ljava/util/Locale;)S
    .locals 7

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    move-object v4, v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "en"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1031
    :cond_0
    const/16 v4, 0x409

    move v0, v4

    .line 1051
    .end local v0    # "locale":Ljava/util/Locale;
    .local v1, "key":Ljava/lang/String;
    :goto_0
    return v0

    .line 1034
    .end local v1    # "key":Ljava/lang/String;
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_1
    sget-object v4, Lcom/sun/javafx/font/PrismFontFile;->lcidMap:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 1035
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFile;->createLCIDMap()V

    .line 1038
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1039
    .restart local v1    # "key":Ljava/lang/String;
    :goto_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1040
    sget-object v4, Lcom/sun/javafx/font/PrismFontFile;->lcidMap:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    move-object v2, v4

    .line 1041
    .local v2, "lcidObject":Ljava/lang/Short;
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 1042
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    move v0, v4

    goto :goto_0

    .line 1044
    :cond_3
    move-object v4, v1

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move v3, v4

    .line 1045
    .local v3, "pos":I
    move v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_4

    .line 1046
    const/16 v4, 0x409

    move v0, v4

    goto :goto_0

    .line 1048
    :cond_4
    move-object v4, v1

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1049
    goto :goto_1

    .line 1051
    .end local v2    # "lcidObject":Ljava/lang/Short;
    .end local v3    # "pos":I
    :cond_5
    const/16 v4, 0x409

    move v0, v4

    goto :goto_0
.end method

.method private static getSystemLCID()S
    .locals 1

    .prologue
    .line 1062
    sget-boolean v0, Lcom/sun/javafx/font/PrismFontFactory;->isWindows:Z

    if-eqz v0, :cond_0

    .line 1063
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getSystemLCID()S

    move-result v0

    .line 1065
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/font/PrismFontFile;->getLCIDFromLocale(Ljava/util/Locale;)S

    move-result v0

    goto :goto_0
.end method

.method private init(Ljava/lang/String;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 396
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object/from16 v3, p1

    .local v3, "name":Ljava/lang/String;
    move/from16 v4, p2

    .local v4, "fIndex":I
    move-object/from16 v17, v2

    new-instance v18, Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/font/FontFileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    .line 397
    const/16 v17, 0x0

    move-object/from16 v5, v17

    .line 399
    .local v5, "decoder":Lcom/sun/javafx/font/WoffDecoder;
    move-object/from16 v17, v2

    :try_start_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader;->openFile()Z

    move-result v17

    if-nez v17, :cond_1

    .line 400
    new-instance v17, Ljava/io/FileNotFoundException;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to create FontResource for file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :catch_0
    move-exception v17

    move-object/from16 v6, v17

    .line 545
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v17, v5

    if-eqz v17, :cond_0

    .line 546
    move-object/from16 v17, v5

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/WoffDecoder;->deleteFile()V

    .line 548
    :cond_0
    move-object/from16 v17, v6

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    move-object/from16 v16, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader;->closeFile()V

    move-object/from16 v17, v16

    throw v17

    .line 403
    :cond_1
    move-object/from16 v17, v2

    :try_start_2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0xc

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v17

    move-object/from16 v6, v17

    .line 404
    .local v6, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v17

    move/from16 v7, v17

    .line 407
    .local v7, "sfntTag":I
    move/from16 v17, v7

    const v18, 0x774f4646

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 408
    new-instance v17, Lcom/sun/javafx/font/WoffDecoder;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/font/WoffDecoder;-><init>()V

    move-object/from16 v5, v17

    .line 409
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/WoffDecoder;->openFile()Ljava/io/File;

    move-result-object v17

    move-object/from16 v8, v17

    .line 410
    .local v8, "file":Ljava/io/File;
    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/WoffDecoder;->decode(Lcom/sun/javafx/font/FontFileReader;)V

    .line 411
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/WoffDecoder;->closeFile()V

    .line 414
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader;->closeFile()V

    .line 415
    move-object/from16 v17, v2

    new-instance v18, Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/font/FontFileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    .line 416
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader;->openFile()Z

    move-result v17

    if-nez v17, :cond_2

    .line 417
    new-instance v17, Ljava/io/FileNotFoundException;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to create FontResource for file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 420
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0xc

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v17

    move-object/from16 v6, v17

    .line 421
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v17

    move/from16 v7, v17

    .line 424
    .end local v8    # "file":Ljava/io/File;
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/font/FontFileReader;->getLength()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->filesize:I

    .line 425
    const/16 v17, 0x0

    move/from16 v8, v17

    .line 426
    .local v8, "headerOffset":I
    move/from16 v17, v7

    const v18, 0x74746366

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 427
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v17

    .line 428
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->directoryCount:I

    .line 429
    move/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile;->directoryCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 430
    new-instance v17, Ljava/lang/Exception;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const-string v19, "Bad collection index"

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 432
    :cond_4
    move-object/from16 v17, v2

    move/from16 v18, v4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->fontIndex:I

    .line 433
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    const/16 v19, 0x4

    move/from16 v20, v4

    mul-int v19, v19, v20

    add-int v18, v18, v19

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v17

    move-object/from16 v6, v17

    .line 434
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v17

    move/from16 v8, v17

    .line 435
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    move/from16 v18, v8

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v17

    move-object/from16 v6, v17

    .line 436
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v17

    move/from16 v7, v17

    .line 439
    :cond_5
    move/from16 v17, v7

    sparse-switch v17, :sswitch_data_0

    .line 449
    new-instance v17, Ljava/lang/Exception;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unsupported sfnt "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 442
    .line 458
    :goto_0
    :sswitch_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    move/from16 v18, v8

    const/16 v19, 0x4

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v17

    move-object/from16 v6, v17

    .line 459
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->numTables:I

    .line 460
    move/from16 v17, v8

    const/16 v18, 0xc

    add-int/lit8 v17, v17, 0xc

    move/from16 v9, v17

    .line 461
    .local v9, "directoryOffset":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    move/from16 v18, v9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile;->numTables:I

    move/from16 v19, v0

    const/16 v20, 0x10

    mul-int/lit8 v19, v19, 0x10

    .line 462
    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v17

    move-object/from16 v10, v17

    .line 464
    .local v10, "ibuffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile;->numTables:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->tableDirectory:[Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    .line 465
    const/16 v17, 0x0

    move/from16 v12, v17

    .local v12, "i":I
    :goto_1
    move/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile;->numTables:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 466
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->tableDirectory:[Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move-object/from16 v17, v0

    move/from16 v18, v12

    new-instance v19, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;-><init>()V

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    move-object/from16 v11, v20

    .local v11, "table":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    aput-object v19, v17, v18

    .line 467
    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->tag:I

    .line 468
    move-object/from16 v17, v10

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->skip(I)V

    .line 469
    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->offset:I

    .line 470
    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    .line 471
    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->offset:I

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filesize:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 472
    new-instance v17, Ljava/lang/Exception;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v21, v19

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bad table, tag="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->tag:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 445
    .end local v9    # "directoryOffset":I
    .end local v10    # "ibuffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .end local v11    # "table":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    .end local v12    # "i":I
    :sswitch_1
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sun/javafx/font/PrismFontFile;->isCFF:Z

    .line 446
    goto/16 :goto_0

    .line 465
    .restart local v9    # "directoryOffset":I
    .restart local v10    # "ibuffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .restart local v11    # "table":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    .restart local v12    # "i":I
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 476
    .end local v11    # "table":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    :cond_7
    move-object/from16 v17, v2

    const v18, 0x68656164

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/PrismFontFile;->getDirectoryEntry(I)Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move-result-object v17

    move-object/from16 v12, v17

    .line 477
    .local v12, "headDE":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->offset:I

    move/from16 v18, v0

    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v17

    move-object/from16 v13, v17

    .line 480
    .local v13, "headTable":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object/from16 v17, v2

    move-object/from16 v18, v13

    const/16 v19, 0x12

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v18

    const v19, 0xffff

    and-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    .line 481
    const/high16 v17, 0x41800000    # 16.0f

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    move/from16 v17, v0

    const/high16 v18, 0x46800000    # 16384.0f

    cmpg-float v17, v17, v18

    if-lez v17, :cond_9

    .line 482
    :cond_8
    move-object/from16 v17, v2

    const/high16 v18, 0x45000000    # 2048.0f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    .line 485
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v18, v13

    const/16 v19, 0x32

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-short v0, v1, Lcom/sun/javafx/font/PrismFontFile;->indexToLocFormat:S

    .line 487
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/sun/javafx/font/PrismFontFile;->indexToLocFormat:S

    move/from16 v17, v0

    if-ltz v17, :cond_a

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-short v0, v0, Lcom/sun/javafx/font/PrismFontFile;->indexToLocFormat:S

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    .line 488
    :cond_a
    new-instance v17, Ljava/lang/Exception;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const-string v19, "Bad indexToLocFormat"

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 493
    :cond_b
    move-object/from16 v17, v2

    const v18, 0x68686561

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/PrismFontFile;->readTable(I)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v17

    move-object/from16 v14, v17

    .line 494
    .local v14, "hhea":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object/from16 v17, v14

    if-nez v17, :cond_f

    .line 495
    move-object/from16 v17, v2

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    .line 511
    :goto_2
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/PrismFontFile;->getNumGlyphs()I

    move-result v17

    .line 513
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Lcom/sun/javafx/font/PrismFontFile;->setStyle()V

    .line 516
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Lcom/sun/javafx/font/PrismFontFile;->checkCMAP()V

    .line 523
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/PrismFontFile;->initNames()V

    .line 525
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_13

    .line 526
    :cond_c
    move-object/from16 v17, v3

    if-eqz v17, :cond_10

    move-object/from16 v17, v3

    :goto_3
    move-object/from16 v15, v17

    .line 527
    .local v15, "fontName":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    .line 528
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    .line 530
    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_e

    .line 531
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    .line 533
    :cond_e
    new-instance v17, Ljava/lang/Exception;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const-string v19, "Font name not found."

    invoke-direct/range {v18 .. v19}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 499
    .end local v15    # "fontName":Ljava/lang/String;
    :cond_f
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->ascent:F

    .line 500
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->descent:F

    .line 501
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->linegap:F

    .line 505
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar(I)C

    move-result v18

    const v19, 0xffff

    and-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    goto/16 :goto_2

    .line 526
    :cond_10
    const-string v17, ""

    goto/16 :goto_3

    .line 528
    .restart local v15    # "fontName":Ljava/lang/String;
    :cond_11
    move-object/from16 v18, v15

    goto/16 :goto_4

    .line 531
    :cond_12
    move-object/from16 v18, v15

    goto :goto_5

    .line 539
    .end local v15    # "fontName":Ljava/lang/String;
    :cond_13
    move-object/from16 v17, v5

    if-eqz v17, :cond_14

    .line 540
    move-object/from16 v17, v2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sun/javafx/font/PrismFontFile;->isDecoded:Z

    .line 541
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/font/FontFileReader;->getFilename()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    .line 542
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v17

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/PrismFontFactory;->addDecodedFont(Lcom/sun/javafx/font/PrismFontFile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    :cond_14
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader;->closeFile()V

    .line 551
    .line 552
    return-void

    .line 439
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x4f54544f -> :sswitch_1
        0x74727565 -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$disposeOnShutdown$225()Ljava/lang/Void;
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 128
    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput-boolean v5, v4, Lcom/sun/javafx/font/PrismFontFile;->isDecoded:Z

    iput-boolean v3, v2, Lcom/sun/javafx/font/PrismFontFile;->isCopy:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    :goto_0
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0

    .line 129
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method private setStyle()V
    .locals 8

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v5, v0

    const v6, 0x4f532f32

    invoke-virtual {v5, v6}, Lcom/sun/javafx/font/PrismFontFile;->getDirectoryEntry(I)Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move-result-object v5

    move-object v1, v5

    .line 576
    .local v1, "os2_DE":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 616
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->offset:I

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v5

    move-object v2, v5

    .line 618
    .local v2, "os_2Table":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v5, v2

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar(I)C

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    move v3, v5

    .line 619
    .local v3, "fsSelection":I
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Lcom/sun/javafx/font/PrismFontFile;->isItalic:Z

    .line 620
    move-object v5, v0

    move v6, v3

    const/16 v7, 0x20

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, v5, Lcom/sun/javafx/font/PrismFontFile;->isBold:Z

    .line 621
    .line 629
    .end local v2    # "os_2Table":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .end local v3    # "fsSelection":I
    :goto_2
    return-void

    .line 619
    .restart local v2    # "os_2Table":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .restart local v3    # "fsSelection":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 620
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 622
    .end local v2    # "os_2Table":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .end local v3    # "fsSelection":I
    :cond_2
    move-object v5, v0

    const v6, 0x68656164

    invoke-virtual {v5, v6}, Lcom/sun/javafx/font/PrismFontFile;->getDirectoryEntry(I)Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move-result-object v5

    move-object v2, v5

    .line 623
    .local v2, "headDE":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object v6, v2

    iget v6, v6, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->offset:I

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v5

    move-object v3, v5

    .line 625
    .local v3, "headTable":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v5, v3

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v5

    move v4, v5

    .line 626
    .local v4, "macStyleBits":S
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, v5, Lcom/sun/javafx/font/PrismFontFile;->isItalic:Z

    .line 627
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, v5, Lcom/sun/javafx/font/PrismFontFile;->isBold:Z

    goto :goto_2

    .line 626
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 627
    :cond_4
    const/4 v6, 0x0

    goto :goto_4
.end method


# virtual methods
.method createFileDisposer(Lcom/sun/javafx/font/PrismFontFactory;)Ljava/lang/ref/WeakReference;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/font/PrismFontFactory;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/font/PrismFontFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, p1

    .local v1, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    new-instance v4, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/font/PrismFontFile;->isTracked:Z

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;-><init>(Ljava/lang/String;Z)V

    move-object v2, v4

    .line 108
    .local v2, "disposer":Lcom/sun/javafx/font/PrismFontFile$FileDisposer;
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/font/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/javafx/font/DisposerRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    move-object v3, v4

    .line 109
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontFile;>;"
    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/font/PrismFontFile$FileDisposer;->setFactory(Lcom/sun/javafx/font/PrismFontFactory;Ljava/lang/ref/WeakReference;)V

    .line 110
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method protected abstract createGlyphBoundingBox(I)[I
.end method

.method protected abstract createStrike(FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)Lcom/sun/javafx/font/PrismFontStrike;
.end method

.method protected declared-synchronized disposeOnShutdown()V
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Lcom/sun/javafx/font/PrismFontFile;->isCopy:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/font/PrismFontFile;->isDecoded:Z

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/font/PrismFontFile$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/font/PrismFontFile;)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    sget-boolean v1, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v1, :cond_1

    .line 135
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_1
    monitor-exit v4

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1252
    const/4 v3, 0x0

    move v0, v3

    .line 1258
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :goto_0
    return v0

    .line 1254
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/font/PrismFontFile;

    if-nez v3, :cond_1

    .line 1255
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1257
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/font/PrismFontFile;

    move-object v2, v3

    .line 1258
    .local v2, "other":Lcom/sun/javafx/font/PrismFontFile;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAdvance(IF)F
    .locals 14

    .prologue
    .line 1113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move v1, p1

    .local v1, "glyphCode":I
    move/from16 v2, p2

    .local v2, "ptSize":F
    move v8, v1

    const v9, 0xffff

    if-ne v8, v9, :cond_0

    .line 1114
    const/4 v8, 0x0

    move v0, v8

    .line 1142
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :goto_0
    return v0

    .line 1117
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/PrismFontFile;->advanceWidths:[C

    if-nez v8, :cond_3

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    if-lez v8, :cond_3

    .line 1118
    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v3, v9

    monitor-enter v8

    .line 1119
    move-object v8, v0

    const v9, 0x686d7478

    :try_start_0
    invoke-virtual {v8, v9}, Lcom/sun/javafx/font/PrismFontFile;->readTable(I)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v8

    move-object v4, v8

    .line 1120
    .local v4, "hmtx":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v8, v4

    if-nez v8, :cond_1

    .line 1121
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    .line 1122
    const/4 v8, 0x0

    move-object v9, v3

    monitor-exit v9

    move v0, v8

    goto :goto_0

    .line 1124
    :cond_1
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    new-array v8, v8, [C

    move-object v5, v8

    .line 1125
    .local v5, "aw":[C
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    if-ge v8, v9, :cond_2

    .line 1126
    move-object v8, v5

    move v9, v6

    move-object v10, v4

    move v11, v6

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    invoke-virtual {v10, v11}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar(I)C

    move-result v10

    aput-char v10, v8, v9

    .line 1125
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1128
    :cond_2
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/sun/javafx/font/PrismFontFile;->advanceWidths:[C

    .line 1129
    move-object v8, v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    .end local v4    # "hmtx":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .end local v5    # "aw":[C
    .end local v6    # "i":I
    :cond_3
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    if-lez v8, :cond_5

    .line 1135
    move v8, v1

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    if-ge v8, v9, :cond_4

    .line 1136
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/PrismFontFile;->advanceWidths:[C

    move v9, v1

    aget-char v8, v8, v9

    move v3, v8

    .line 1140
    .local v3, "cadv":C
    :goto_2
    move v8, v3

    const v9, 0xffff

    and-int/2addr v8, v9

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v8, v9

    move v0, v8

    goto :goto_0

    .line 1129
    .end local v3    # "cadv":C
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    throw v8

    .line 1138
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/PrismFontFile;->advanceWidths:[C

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-char v8, v8, v9

    move v3, v8

    .restart local v3    # "cadv":C
    goto :goto_2

    .line 1142
    .end local v3    # "cadv":C
    :cond_5
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method public getDefaultAAMode()I
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method getDirectoryEntry(I)Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    .locals 5

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move v1, p1

    .local v1, "tag":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/PrismFontFile;->numTables:I

    if-ge v3, v4, :cond_1

    .line 383
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFile;->tableDirectory:[Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move v4, v2

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->tag:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 384
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFile;->tableDirectory:[Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 387
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :goto_1
    return-object v0

    .line 382
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getFeatures()I
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    const/4 v1, -0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method protected getFileSize()I
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFontFile;->filesize:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public getFontCount()I
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFontFile;->directoryCount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method protected getFontIndex()I
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFontFile;->fontIndex:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public getFontMetrics(F)Lcom/sun/javafx/font/PrismMetrics;
    .locals 10

    .prologue
    .line 1147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move v1, p1

    .local v1, "ptSize":F
    new-instance v2, Lcom/sun/javafx/font/PrismMetrics;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/font/PrismFontFile;->ascent:F

    move v5, v1

    mul-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/font/PrismFontFile;->descent:F

    move v6, v1

    mul-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/font/PrismFontFile;->linegap:F

    move v7, v1

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v6, v7

    move-object v7, v0

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/sun/javafx/font/PrismMetrics;-><init>(FFFLcom/sun/javafx/font/PrismFontFile;F)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getGlyphBoundingBox(IF[F)[F
    .locals 19

    .prologue
    .line 295
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move/from16 v1, p1

    .local v1, "gc":I
    move/from16 v2, p2

    .local v2, "size":F
    move-object/from16 v3, p3

    .local v3, "retArr":[F
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    array-length v6, v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 296
    :cond_0
    const/4 v6, 0x4

    new-array v6, v6, [F

    move-object v3, v6

    .line 298
    :cond_1
    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/font/PrismFontFile;->getNumGlyphs()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 299
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x1

    move-object v10, v3

    const/4 v11, 0x2

    move-object v12, v3

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v12, v18

    move-object/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v18

    aput v15, v13, v14

    move-object/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v10, v18

    move-object/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    aput v13, v11, v12

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v8, v18

    move-object/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    aput v11, v9, v10

    aput v8, v6, v7

    .line 300
    move-object v6, v3

    move-object v0, v6

    .line 316
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :goto_0
    return-object v0

    .line 302
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFile;->bbCache:Ljava/util/HashMap;

    if-nez v6, :cond_3

    .line 303
    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/font/PrismFontFile;->bbCache:Ljava/util/HashMap;

    .line 305
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFile;->bbCache:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v4, v6

    .line 306
    .local v4, "bb":[I
    move-object v6, v4

    if-nez v6, :cond_5

    .line 307
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/font/PrismFontFile;->createGlyphBoundingBox(I)[I

    move-result-object v6

    move-object v4, v6

    .line 308
    move-object v6, v4

    if-nez v6, :cond_4

    sget-object v6, Lcom/sun/javafx/font/PrismFontFile;->EMPTY_BOUNDS:[I

    move-object v4, v6

    .line 309
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/font/PrismFontFile;->bbCache:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 311
    :cond_5
    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/font/PrismFontFile;->getUnitsPerEm()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v5, v6

    .line 312
    .local v5, "scale":F
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    aget v8, v8, v9

    int-to-float v8, v8

    move v9, v5

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 313
    move-object v6, v3

    const/4 v7, 0x1

    move-object v8, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    move v9, v5

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 314
    move-object v6, v3

    const/4 v7, 0x2

    move-object v8, v4

    const/4 v9, 0x2

    aget v8, v8, v9

    int-to-float v8, v8

    move v9, v5

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 315
    move-object v6, v3

    const/4 v7, 0x3

    move-object v8, v4

    const/4 v9, 0x3

    aget v8, v8, v9

    int-to-float v8, v8

    move v9, v5

    mul-float/2addr v8, v9

    aput v8, v6, v7

    .line 316
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method public getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;
    .locals 6

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->mapper:Lcom/sun/javafx/font/OpenTypeGlyphMapper;

    if-nez v1, :cond_0

    .line 1073
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/font/OpenTypeGlyphMapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/font/OpenTypeGlyphMapper;-><init>(Lcom/sun/javafx/font/PrismFontFile;)V

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFile;->mapper:Lcom/sun/javafx/font/OpenTypeGlyphMapper;

    .line 1075
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->mapper:Lcom/sun/javafx/font/OpenTypeGlyphMapper;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getIndexToLocFormat()S
    .locals 2

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-short v1, v1, Lcom/sun/javafx/font/PrismFontFile;->indexToLocFormat:S

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public getLocaleFamilyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->localeFamilyName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getLocaleFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->localeFullName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getLocaleStyleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->localeStyleName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method getNumGlyphs()I
    .locals 5

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/PrismFontFile;->numGlyphs:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 321
    move-object v2, v0

    const v3, 0x6d617870

    invoke-virtual {v2, v3}, Lcom/sun/javafx/font/PrismFontFile;->readTable(I)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v2

    move-object v1, v2

    .line 322
    .local v1, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar(I)C

    move-result v3

    iput v3, v2, Lcom/sun/javafx/font/PrismFontFile;->numGlyphs:I

    .line 324
    .end local v1    # "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/PrismFontFile;->numGlyphs:I

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public getNumHMetrics()I
    .locals 2

    .prologue
    .line 666
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFontFile;->numHMetrics:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public getPSName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->psName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 225
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/javafx/font/PrismFontFile;->psName:Ljava/lang/String;

    .line 227
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->psName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getPeer()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->peer:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;
    .locals 7

    .prologue
    .line 1079
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move v1, p1

    .local v1, "size":F
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/font/PrismFontFile;->getDefaultAAMode()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/font/PrismFontFile;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;I)Lcom/sun/javafx/font/FontStrike;
    .locals 14

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move v1, p1

    .local v1, "size":F
    move-object/from16 v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v3, p3

    .local v3, "aaMode":I
    new-instance v8, Lcom/sun/javafx/font/FontStrikeDesc;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move v10, v1

    move-object v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/font/FontStrikeDesc;-><init>(FLcom/sun/javafx/geom/transform/BaseTransform;I)V

    move-object v4, v8

    .line 270
    .local v4, "desc":Lcom/sun/javafx/font/FontStrikeDesc;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/PrismFontFile;->strikeMap:Ljava/util/Map;

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v5, v8

    .line 271
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/javafx/font/PrismFontStrike;>;"
    const/4 v8, 0x0

    move-object v6, v8

    .line 272
    .local v6, "strike":Lcom/sun/javafx/font/PrismFontStrike;
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 273
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/font/PrismFontStrike;

    move-object v6, v8

    .line 275
    :cond_0
    move-object v8, v6

    if-nez v8, :cond_1

    .line 276
    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/font/PrismFontFile;->createStrike(FLcom/sun/javafx/geom/transform/BaseTransform;ILcom/sun/javafx/font/FontStrikeDesc;)Lcom/sun/javafx/font/PrismFontStrike;

    move-result-object v8

    move-object v6, v8

    .line 277
    move-object v8, v6

    invoke-virtual {v8}, Lcom/sun/javafx/font/PrismFontStrike;->getDisposer()Lcom/sun/javafx/font/DisposerRecord;

    move-result-object v8

    move-object v7, v8

    .line 278
    .local v7, "disposer":Lcom/sun/javafx/font/DisposerRecord;
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 279
    move-object v8, v6

    move-object v9, v7

    invoke-static {v8, v9}, Lcom/sun/javafx/font/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/javafx/font/DisposerRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    move-object v5, v8

    .line 283
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/font/PrismFontFile;->strikeMap:Ljava/util/Map;

    move-object v9, v4

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 285
    .end local v7    # "disposer":Lcom/sun/javafx/font/DisposerRecord;
    :cond_1
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0

    .line 281
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    .restart local v7    # "disposer":Lcom/sun/javafx/font/DisposerRecord;
    :cond_2
    new-instance v8, Ljava/lang/ref/WeakReference;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v6

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v5, v8

    goto :goto_0
.end method

.method public getStrikeMap()Ljava/util/Map;
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->strikeMap:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method getStyleMetrics(F)[F
    .locals 16

    .prologue
    .line 1155
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move/from16 v1, p1

    .local v1, "ptSize":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/font/PrismFontFile;->styleMetrics:[F

    if-nez v10, :cond_5

    .line 1156
    const/16 v10, 0x9

    new-array v10, v10, [F

    move-object v2, v10

    .line 1158
    .local v2, "smetrics":[F
    move-object v10, v0

    const v11, 0x4f532f32

    invoke-virtual {v10, v11}, Lcom/sun/javafx/font/PrismFontFile;->readTable(I)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v10

    move-object v3, v10

    .line 1159
    .local v3, "os_2":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v10, v3

    if-eqz v10, :cond_6

    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileReader$Buffer;->capacity()I

    move-result v10

    :goto_0
    move v4, v10

    .line 1161
    .local v4, "length":I
    move v10, v4

    const/16 v11, 0x1e

    if-lt v10, v11, :cond_7

    .line 1162
    move-object v10, v2

    const/4 v11, 0x5

    move-object v12, v3

    const/16 v13, 0x1a

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v12

    int-to-float v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1163
    move-object v10, v2

    const/4 v11, 0x6

    move-object v12, v3

    const/16 v13, 0x1c

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1168
    :goto_1
    move v10, v4

    const/16 v11, 0x4a

    if-lt v10, v11, :cond_8

    .line 1170
    move-object v10, v2

    const/4 v11, 0x2

    move-object v12, v3

    const/16 v13, 0x44

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1171
    move-object v10, v2

    const/4 v11, 0x3

    move-object v12, v3

    const/16 v13, 0x46

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1172
    move-object v10, v2

    const/4 v11, 0x4

    move-object v12, v3

    const/16 v13, 0x48

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v12

    int-to-float v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1181
    :goto_2
    move v10, v4

    const/16 v11, 0x5a

    if-lt v10, v11, :cond_0

    .line 1182
    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v3

    const/16 v13, 0x56

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v12

    int-to-float v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1183
    move-object v10, v2

    const/4 v11, 0x1

    move-object v12, v3

    const/16 v13, 0x58

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v12

    int-to-float v12, v12

    aput v12, v10, v11

    .line 1188
    move-object v10, v2

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/font/PrismFontFile;->ascent:F

    div-float/2addr v10, v11

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v10, v10, v12

    if-gez v10, :cond_9

    .line 1189
    move-object v10, v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1195
    :cond_0
    :goto_3
    move-object v10, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    move-object v10, v2

    const/4 v11, 0x1

    aget v10, v10, v11

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    .line 1196
    :cond_1
    move-object v10, v0

    move v11, v1

    sget-object v12, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/font/PrismFontFile;->getStrike(FLcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/font/FontStrike;

    move-result-object v10

    move-object v5, v10

    .line 1197
    .local v5, "strike":Lcom/sun/javafx/font/FontStrike;
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/font/PrismFontFile;->getGlyphMapper()Lcom/sun/javafx/font/CharToGlyphMapper;

    move-result-object v10

    move-object v6, v10

    .line 1198
    .local v6, "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/javafx/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result v10

    move v7, v10

    .line 1200
    .local v7, "missingGlyph":I
    move-object v10, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_2

    .line 1201
    move-object v10, v6

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Lcom/sun/javafx/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result v10

    move v8, v10

    .line 1202
    .local v8, "gc":I
    move v10, v8

    move v11, v7

    if-eq v10, v11, :cond_a

    .line 1203
    move-object v10, v5

    move v11, v8

    invoke-interface {v10, v11}, Lcom/sun/javafx/font/FontStrike;->getGlyph(I)Lcom/sun/javafx/font/Glyph;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/javafx/font/Glyph;->getBBox()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v10

    move-object v9, v10

    .line 1204
    .local v9, "fbds":Lcom/sun/javafx/geom/RectBounds;
    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v12

    move v13, v1

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1205
    .line 1209
    .end local v8    # "gc":I
    .end local v9    # "fbds":Lcom/sun/javafx/geom/RectBounds;
    :cond_2
    :goto_4
    move-object v10, v2

    const/4 v11, 0x1

    aget v10, v10, v11

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    .line 1210
    move-object v10, v6

    const/16 v11, 0x48

    invoke-virtual {v10, v11}, Lcom/sun/javafx/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result v10

    move v8, v10

    .line 1211
    .restart local v8    # "gc":I
    move v10, v8

    move v11, v7

    if-eq v10, v11, :cond_b

    .line 1212
    move-object v10, v5

    move v11, v8

    invoke-interface {v10, v11}, Lcom/sun/javafx/font/FontStrike;->getGlyph(I)Lcom/sun/javafx/font/Glyph;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/javafx/font/Glyph;->getBBox()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v10

    move-object v9, v10

    .line 1213
    .restart local v9    # "fbds":Lcom/sun/javafx/geom/RectBounds;
    move-object v10, v2

    const/4 v11, 0x1

    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v12

    move v13, v1

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1214
    .line 1220
    .end local v5    # "strike":Lcom/sun/javafx/font/FontStrike;
    .end local v6    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    .end local v7    # "missingGlyph":I
    .end local v8    # "gc":I
    .end local v9    # "fbds":Lcom/sun/javafx/geom/RectBounds;
    :cond_3
    :goto_5
    move-object v10, v0

    const v11, 0x706f7374

    invoke-virtual {v10, v11}, Lcom/sun/javafx/font/PrismFontFile;->readTable(I)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v10

    move-object v5, v10

    .line 1221
    .local v5, "postTable":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v10, v5

    if-eqz v10, :cond_4

    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/font/FontFileReader$Buffer;->capacity()I

    move-result v10

    const/16 v11, 0xc

    if-ge v10, v11, :cond_c

    .line 1222
    :cond_4
    move-object v10, v2

    const/16 v11, 0x8

    const v12, 0x3dcccccd    # 0.1f

    aput v12, v10, v11

    .line 1223
    move-object v10, v2

    const/4 v11, 0x7

    const v12, 0x3d4ccccd    # 0.05f

    aput v12, v10, v11

    .line 1228
    :goto_6
    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Lcom/sun/javafx/font/PrismFontFile;->styleMetrics:[F

    .line 1231
    .end local v2    # "smetrics":[F
    .end local v3    # "os_2":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .end local v4    # "length":I
    .end local v5    # "postTable":Lcom/sun/javafx/font/FontFileReader$Buffer;
    :cond_5
    const/16 v10, 0x9

    new-array v10, v10, [F

    move-object v2, v10

    .line 1232
    .local v2, "metrics":[F
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    :goto_7
    move v10, v3

    const/16 v11, 0x9

    if-ge v10, v11, :cond_d

    .line 1233
    move-object v10, v2

    move v11, v3

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/font/PrismFontFile;->styleMetrics:[F

    move v13, v3

    aget v12, v12, v13

    move v13, v1

    mul-float/2addr v12, v13

    aput v12, v10, v11

    .line 1232
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1159
    .local v2, "smetrics":[F
    .local v3, "os_2":Lcom/sun/javafx/font/FontFileReader$Buffer;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1165
    .restart local v4    # "length":I
    :cond_7
    move-object v10, v2

    const/4 v11, 0x5

    const v12, 0x3d4ccccd    # 0.05f

    aput v12, v10, v11

    .line 1166
    move-object v10, v2

    const/4 v11, 0x6

    const v12, -0x41333333    # -0.4f

    aput v12, v10, v11

    goto/16 :goto_1

    .line 1174
    :cond_8
    move-object v10, v2

    const/4 v11, 0x2

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/font/PrismFontFile;->ascent:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1175
    move-object v10, v2

    const/4 v11, 0x3

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/font/PrismFontFile;->descent:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1176
    move-object v10, v2

    const/4 v11, 0x4

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/font/PrismFontFile;->linegap:F

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    goto/16 :goto_2

    .line 1191
    :cond_9
    move-object v10, v2

    const/4 v11, 0x1

    move-object v14, v10

    move v15, v11

    move-object v10, v14

    move v11, v15

    move-object v12, v14

    move v13, v15

    aget v12, v12, v13

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    goto/16 :goto_3

    .line 1206
    .local v5, "strike":Lcom/sun/javafx/font/FontStrike;
    .restart local v6    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    .restart local v7    # "missingGlyph":I
    .restart local v8    # "gc":I
    :cond_a
    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/font/PrismFontFile;->ascent:F

    neg-float v12, v12

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    goto/16 :goto_4

    .line 1215
    :cond_b
    move-object v10, v2

    const/4 v11, 0x1

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/font/PrismFontFile;->ascent:F

    neg-float v12, v12

    const v13, 0x3f666666    # 0.9f

    mul-float/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    goto/16 :goto_5

    .line 1225
    .end local v6    # "mapper":Lcom/sun/javafx/font/CharToGlyphMapper;
    .end local v7    # "missingGlyph":I
    .end local v8    # "gc":I
    .local v5, "postTable":Lcom/sun/javafx/font/FontFileReader$Buffer;
    :cond_c
    move-object v10, v2

    const/16 v11, 0x8

    move-object v12, v5

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 1226
    move-object v10, v2

    const/4 v11, 0x7

    move-object v12, v5

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v12

    int-to-float v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    div-float/2addr v12, v13

    aput v12, v10, v11

    goto/16 :goto_6

    .line 1236
    .end local v4    # "length":I
    .end local v5    # "postTable":Lcom/sun/javafx/font/FontFileReader$Buffer;
    .local v2, "metrics":[F
    .local v3, "i":I
    :cond_d
    move-object v10, v2

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->styleName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method getTableBytes(I)[B
    .locals 9

    .prologue
    .line 1240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move v1, p1

    .local v1, "tag":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/font/PrismFontFile;->readTable(I)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v4

    move-object v2, v4

    .line 1241
    .local v2, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    const/4 v4, 0x0

    move-object v3, v4

    .line 1242
    .local v3, "table":[B
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1243
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/font/FontFileReader$Buffer;->capacity()I

    move-result v4

    new-array v4, v4, [B

    move-object v3, v4

    .line 1244
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;->capacity()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/font/FontFileReader$Buffer;->get(I[BII)V

    .line 1246
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0
.end method

.method public getUnitsPerEm()I
    .locals 2

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/font/PrismFontFile;->upem:F

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x47

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method initNames()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 683
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/font/PrismFontFile;
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v3, v17

    .line 685
    .local v3, "name":[B
    move-object/from16 v17, v2

    const v18, 0x6e616d65

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/PrismFontFile;->getDirectoryEntry(I)Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move-result-object v17

    move-object/from16 v4, v17

    .line 686
    .local v4, "nameDE":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->offset:I

    move/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v17

    move-object/from16 v5, v17

    .line 688
    .local v5, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object/from16 v17, v5

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->skip(I)V

    .line 689
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v17

    move/from16 v6, v17

    .line 695
    .local v6, "numRecords":S
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v17

    const v18, 0xffff

    and-int v17, v17, v18

    move/from16 v7, v17

    .line 701
    .local v7, "stringPtr":I
    const/16 v17, 0x0

    move/from16 v8, v17

    .local v8, "i":I
    :goto_0
    move/from16 v17, v8

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_16

    .line 702
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v17

    move/from16 v9, v17

    .line 703
    .local v9, "platformID":S
    move/from16 v17, v9

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 705
    move-object/from16 v17, v5

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->skip(I)V

    .line 706
    .line 701
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 708
    :cond_1
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v17

    move/from16 v10, v17

    .line 711
    .local v10, "encodingID":S
    move/from16 v17, v9

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move/from16 v17, v10

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    :cond_2
    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move/from16 v17, v10

    if-eqz v17, :cond_4

    .line 714
    :cond_3
    move-object/from16 v17, v5

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->skip(I)V

    .line 715
    goto :goto_1

    .line 717
    :cond_4
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v17

    move/from16 v11, v17

    .line 718
    .local v11, "langID":S
    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move/from16 v17, v11

    if-eqz v17, :cond_5

    .line 720
    move-object/from16 v17, v5

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/font/FontFileReader$Buffer;->skip(I)V

    .line 721
    goto :goto_1

    .line 723
    :cond_5
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v17

    move/from16 v12, v17

    .line 724
    .local v12, "nameID":S
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v17

    const v18, 0xffff

    and-int v17, v17, v18

    move/from16 v13, v17

    .line 725
    .local v13, "nameLen":I
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v17

    const v18, 0xffff

    and-int v17, v17, v18

    move/from16 v18, v7

    add-int v17, v17, v18

    move/from16 v14, v17

    .line 726
    .local v14, "namePtr":I
    const/16 v17, 0x0

    move-object/from16 v15, v17

    .line 728
    .local v15, "tmpName":Ljava/lang/String;
    move/from16 v17, v12

    packed-switch v17, :pswitch_data_0

    .line 818
    :cond_6
    :goto_2
    :pswitch_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->localeFamilyName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 819
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->localeFamilyName:Ljava/lang/String;

    .line 821
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->localeFullName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 822
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->localeFullName:Ljava/lang/String;

    .line 824
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->localeStyleName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 825
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->styleName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->localeStyleName:Ljava/lang/String;

    goto/16 :goto_1

    .line 732
    :pswitch_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move/from16 v17, v11

    const/16 v18, 0x409

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    move/from16 v17, v11

    sget-short v18, Lcom/sun/javafx/font/PrismFontFile;->nameLocaleID:S

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 735
    :cond_9
    move-object/from16 v17, v5

    move/from16 v18, v14

    move-object/from16 v19, v3

    const/16 v20, 0x0

    move/from16 v21, v13

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/font/FontFileReader$Buffer;->get(I[BII)V

    .line 736
    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 737
    const-string v17, "US-ASCII"

    move-object/from16 v16, v17

    .line 741
    .local v16, "enc":Ljava/lang/String;
    :goto_3
    new-instance v17, Ljava/lang/String;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    move-object/from16 v19, v3

    const/16 v20, 0x0

    move/from16 v21, v13

    move-object/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v15, v17

    .line 743
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move/from16 v17, v11

    const/16 v18, 0x409

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 745
    :cond_a
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->familyName:Ljava/lang/String;

    .line 747
    :cond_b
    move/from16 v17, v11

    sget-short v18, Lcom/sun/javafx/font/PrismFontFile;->nameLocaleID:S

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 748
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->localeFamilyName:Ljava/lang/String;

    goto/16 :goto_2

    .line 739
    .end local v16    # "enc":Ljava/lang/String;
    :cond_c
    const-string v17, "UTF-16BE"

    move-object/from16 v16, v17

    .restart local v16    # "enc":Ljava/lang/String;
    goto :goto_3

    .line 755
    .end local v16    # "enc":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move/from16 v17, v11

    const/16 v18, 0x409

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    move/from16 v17, v11

    sget-short v18, Lcom/sun/javafx/font/PrismFontFile;->nameLocaleID:S

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 759
    :cond_d
    move-object/from16 v17, v5

    move/from16 v18, v14

    move-object/from16 v19, v3

    const/16 v20, 0x0

    move/from16 v21, v13

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/font/FontFileReader$Buffer;->get(I[BII)V

    .line 760
    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 761
    const-string v17, "US-ASCII"

    move-object/from16 v16, v17

    .line 765
    .restart local v16    # "enc":Ljava/lang/String;
    :goto_4
    new-instance v17, Ljava/lang/String;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    move-object/from16 v19, v3

    const/16 v20, 0x0

    move/from16 v21, v13

    move-object/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v15, v17

    .line 767
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move/from16 v17, v11

    const/16 v18, 0x409

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 769
    :cond_e
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->fullName:Ljava/lang/String;

    .line 771
    :cond_f
    move/from16 v17, v11

    sget-short v18, Lcom/sun/javafx/font/PrismFontFile;->nameLocaleID:S

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 772
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->localeFullName:Ljava/lang/String;

    goto/16 :goto_2

    .line 763
    .end local v16    # "enc":Ljava/lang/String;
    :cond_10
    const-string v17, "UTF-16BE"

    move-object/from16 v16, v17

    .restart local v16    # "enc":Ljava/lang/String;
    goto :goto_4

    .line 779
    .end local v16    # "enc":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->psName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 780
    move-object/from16 v17, v5

    move/from16 v18, v14

    move-object/from16 v19, v3

    const/16 v20, 0x0

    move/from16 v21, v13

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/font/FontFileReader$Buffer;->get(I[BII)V

    .line 781
    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 782
    const-string v17, "US-ASCII"

    move-object/from16 v16, v17

    .line 786
    .restart local v16    # "enc":Ljava/lang/String;
    :goto_5
    move-object/from16 v17, v2

    new-instance v18, Ljava/lang/String;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v3

    const/16 v21, 0x0

    move/from16 v22, v13

    move-object/from16 v23, v16

    invoke-direct/range {v19 .. v23}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->psName:Ljava/lang/String;

    goto/16 :goto_2

    .line 784
    .end local v16    # "enc":Ljava/lang/String;
    :cond_11
    const-string v17, "UTF-16BE"

    move-object/from16 v16, v17

    .restart local v16    # "enc":Ljava/lang/String;
    goto :goto_5

    .line 792
    .end local v16    # "enc":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->styleName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    move/from16 v17, v11

    const/16 v18, 0x409

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    move/from16 v17, v11

    sget-short v18, Lcom/sun/javafx/font/PrismFontFile;->nameLocaleID:S

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 796
    :cond_12
    move-object/from16 v17, v5

    move/from16 v18, v14

    move-object/from16 v19, v3

    const/16 v20, 0x0

    move/from16 v21, v13

    invoke-virtual/range {v17 .. v21}, Lcom/sun/javafx/font/FontFileReader$Buffer;->get(I[BII)V

    .line 797
    move/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 798
    const-string v17, "US-ASCII"

    move-object/from16 v16, v17

    .line 802
    .restart local v16    # "enc":Ljava/lang/String;
    :goto_6
    new-instance v17, Ljava/lang/String;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    move-object/from16 v19, v3

    const/16 v20, 0x0

    move/from16 v21, v13

    move-object/from16 v22, v16

    invoke-direct/range {v18 .. v22}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v15, v17

    .line 804
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/font/PrismFontFile;->styleName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move/from16 v17, v11

    const/16 v18, 0x409

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 806
    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->styleName:Ljava/lang/String;

    .line 808
    :cond_14
    move/from16 v17, v11

    sget-short v18, Lcom/sun/javafx/font/PrismFontFile;->nameLocaleID:S

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 809
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/font/PrismFontFile;->localeStyleName:Ljava/lang/String;

    goto/16 :goto_2

    .line 800
    .end local v16    # "enc":Ljava/lang/String;
    :cond_15
    const-string v17, "UTF-16BE"

    move-object/from16 v16, v17

    .restart local v16    # "enc":Ljava/lang/String;
    goto :goto_6

    .line 828
    .end local v9    # "platformID":S
    .end local v10    # "encodingID":S
    .end local v11    # "langID":S
    .end local v12    # "nameID":S
    .end local v13    # "nameLen":I
    .end local v14    # "namePtr":I
    .end local v15    # "tmpName":Ljava/lang/String;
    .end local v16    # "enc":Ljava/lang/String;
    :cond_16
    return-void

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isBold()Z
    .locals 2

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/font/PrismFontFile;->isBold:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method protected isCFF()Z
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/font/PrismFontFile;->isCFF:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public isDecoded()Z
    .locals 2

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/font/PrismFontFile;->isDecoded:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public isEmbeddedFont()Z
    .locals 2

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/font/PrismFontFile;->isEmbedded:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public isInstalledFont()Z
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/PrismFontFile;->fontInstallationType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 146
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v2

    move-object v1, v2

    .line 147
    .local v1, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/font/PrismFontFile;->filename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/PrismFontFactory;->isInstalledFont(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Lcom/sun/javafx/font/PrismFontFile;->fontInstallationType:I

    .line 149
    .end local v1    # "factory":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/font/PrismFontFile;->fontInstallationType:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0

    .line 147
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    .restart local v1    # "factory":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 149
    .end local v1    # "factory":Lcom/sun/javafx/font/PrismFontFactory;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isItalic()Z
    .locals 2

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/font/PrismFontFile;->isItalic:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method public isRegistered()Z
    .locals 2

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/font/PrismFontFile;->isRegistered:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    return v0
.end method

.method declared-synchronized readTable(I)Lcom/sun/javafx/font/FontFileReader$Buffer;
    .locals 11

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move v1, p1

    .local v1, "tag":I
    move-object v10, p0

    monitor-enter v10

    const/4 v7, 0x0

    move-object v2, v7

    .line 342
    .local v2, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    const/4 v7, 0x0

    move v3, v7

    .line 344
    .local v3, "openedFile":Z
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader;->openFile()Z

    move-result v7

    move v3, v7

    .line 345
    move-object v7, v0

    move v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/font/PrismFontFile;->getDirectoryEntry(I)Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;

    move-result-object v7

    move-object v4, v7

    .line 346
    .local v4, "tagDE":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 347
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    move-object v8, v4

    iget v8, v8, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->offset:I

    move-object v9, v4

    iget v9, v9, Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;->length:I

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/font/FontFileReader;->readBlock(II)Lcom/sun/javafx/font/FontFileReader$Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v2, v7

    .line 354
    :cond_0
    move v7, v3

    if-eqz v7, :cond_1

    .line 356
    move-object v7, v0

    :try_start_1
    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader;->closeFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 358
    .line 361
    .end local v4    # "tagDE":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    :cond_1
    :goto_0
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    monitor-exit v10

    return-object v0

    .line 357
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    .restart local v4    # "tagDE":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 358
    goto :goto_0

    .line 349
    .end local v4    # "tagDE":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 350
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v7, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v7, :cond_2

    .line 351
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    :cond_2
    move v7, v3

    if-eqz v7, :cond_1

    .line 356
    move-object v7, v0

    :try_start_3
    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader;->closeFile()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    goto :goto_0

    .line 357
    :catch_2
    move-exception v7

    move-object v4, v7

    .line 358
    goto :goto_0

    .line 354
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    move-object v5, v7

    move v7, v3

    if-eqz v7, :cond_3

    .line 356
    move-object v7, v0

    :try_start_4
    iget-object v7, v7, Lcom/sun/javafx/font/PrismFontFile;->filereader:Lcom/sun/javafx/font/FontFileReader;

    invoke-virtual {v7}, Lcom/sun/javafx/font/FontFileReader;->closeFile()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 358
    :cond_3
    :goto_1
    move-object v7, v5

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 341
    :catchall_1
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    throw v0

    .line 357
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFile;
    :catch_3
    move-exception v7

    move-object v6, v7

    goto :goto_1
.end method

.method setIsDecoded(Z)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move v1, p1

    .local v1, "decoded":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/font/PrismFontFile;->isDecoded:Z

    .line 115
    return-void
.end method

.method public setPeer(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile;
    move-object v1, p1

    .local v1, "peer":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/font/PrismFontFile;->peer:Ljava/lang/Object;

    .line 338
    return-void
.end method
