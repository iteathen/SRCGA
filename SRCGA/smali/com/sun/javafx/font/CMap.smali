.class abstract Lcom/sun/javafx/font/CMap;
.super Ljava/lang/Object;
.source "CMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/font/CMap$NullCMapClass;,
        Lcom/sun/javafx/font/CMap$CMapFormat12;,
        Lcom/sun/javafx/font/CMap$CMapFormat10;,
        Lcom/sun/javafx/font/CMap$CMapFormat8;,
        Lcom/sun/javafx/font/CMap$CMapFormat6;,
        Lcom/sun/javafx/font/CMap$CMapFormat2;,
        Lcom/sun/javafx/font/CMap$CMapFormat0;,
        Lcom/sun/javafx/font/CMap$CMapFormat4;
    }
.end annotation


# static fields
.field static final INTMASK:I = -0x1

.field private static final MAX_CODE_POINTS:I = 0x10ffff

.field static final SHORTMASK:I = 0xffff

.field static final noSuchChar:C = '\ufffd'

.field public static final theNullCmap:Lcom/sun/javafx/font/CMap$NullCMapClass;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 602
    new-instance v0, Lcom/sun/javafx/font/CMap$NullCMapClass;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/font/CMap$NullCMapClass;-><init>()V

    sput-object v0, Lcom/sun/javafx/font/CMap;->theNullCmap:Lcom/sun/javafx/font/CMap$NullCMapClass;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCMap(Lcom/sun/javafx/font/FontFileReader$Buffer;I)Lcom/sun/javafx/font/CMap;
    .locals 9

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move v1, p1

    .local v1, "offset":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar(I)C

    move-result v3

    move v2, v3

    .line 128
    .local v2, "subtableFormat":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 136
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cmap format unimplemented: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    move v7, v1

    .line 137
    invoke-virtual {v6, v7}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getChar(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :pswitch_1
    new-instance v3, Lcom/sun/javafx/font/CMap$CMapFormat0;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/font/CMap$CMapFormat0;-><init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V

    move-object v0, v3

    .line 135
    .end local v0    # "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    :goto_0
    return-object v0

    .line 130
    .restart local v0    # "buffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    :pswitch_2
    new-instance v3, Lcom/sun/javafx/font/CMap$CMapFormat2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/font/CMap$CMapFormat2;-><init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V

    move-object v0, v3

    goto :goto_0

    .line 131
    :pswitch_3
    new-instance v3, Lcom/sun/javafx/font/CMap$CMapFormat4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/font/CMap$CMapFormat4;-><init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V

    move-object v0, v3

    goto :goto_0

    .line 132
    :pswitch_4
    new-instance v3, Lcom/sun/javafx/font/CMap$CMapFormat6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/font/CMap$CMapFormat6;-><init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V

    move-object v0, v3

    goto :goto_0

    .line 133
    :pswitch_5
    new-instance v3, Lcom/sun/javafx/font/CMap$CMapFormat8;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/font/CMap$CMapFormat8;-><init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V

    move-object v0, v3

    goto :goto_0

    .line 134
    :pswitch_6
    new-instance v3, Lcom/sun/javafx/font/CMap$CMapFormat10;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/font/CMap$CMapFormat10;-><init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V

    move-object v0, v3

    goto :goto_0

    .line 135
    :pswitch_7
    new-instance v3, Lcom/sun/javafx/font/CMap$CMapFormat12;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/font/CMap$CMapFormat12;-><init>(Lcom/sun/javafx/font/FontFileReader$Buffer;I)V

    move-object v0, v3

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method static initialize(Lcom/sun/javafx/font/PrismFontFile;)Lcom/sun/javafx/font/CMap;
    .locals 17

    .prologue
    .line 52
    move-object/from16 v0, p0

    .local v0, "font":Lcom/sun/javafx/font/PrismFontFile;
    const/4 v14, 0x0

    move-object v1, v14

    .line 54
    .local v1, "cmap":Lcom/sun/javafx/font/CMap;
    const/4 v14, -0x1

    move v4, v14

    .line 56
    .local v4, "encodingID":I
    const/4 v14, 0x0

    move v5, v14

    .local v5, "three0":I
    const/4 v14, 0x0

    move v6, v14

    .local v6, "three1":I
    const/4 v14, 0x0

    move v7, v14

    .local v7, "three10":I
    const/4 v14, 0x0

    move v8, v14

    .line 57
    .local v8, "zeroStarOffset":I
    const/4 v14, 0x0

    move v9, v14

    .local v9, "zeroStar":Z
    const/4 v14, 0x0

    move v10, v14

    .line 59
    .local v10, "threeStar":Z
    move-object v14, v0

    const v15, 0x636d6170

    invoke-virtual {v14, v15}, Lcom/sun/javafx/font/PrismFontFile;->readTable(I)Lcom/sun/javafx/font/FontFileReader$Buffer;

    move-result-object v14

    move-object v11, v14

    .line 60
    .local v11, "cmapBuffer":Lcom/sun/javafx/font/FontFileReader$Buffer;
    move-object v14, v11

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort(I)S

    move-result v14

    move v12, v14

    .line 71
    .local v12, "numberSubTables":S
    const/4 v14, 0x0

    move v13, v14

    .local v13, "i":I
    :goto_0
    move v14, v13

    move v15, v12

    if-ge v14, v15, :cond_2

    .line 72
    move-object v14, v11

    move v15, v13

    const/16 v16, 0x8

    mul-int/lit8 v15, v15, 0x8

    const/16 v16, 0x4

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v14, v15}, Lcom/sun/javafx/font/FontFileReader$Buffer;->position(I)V

    .line 73
    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v14

    move v3, v14

    .line 75
    .local v3, "platformID":I
    move v14, v3

    if-nez v14, :cond_1

    .line 76
    const/4 v14, 0x1

    move v9, v14

    .line 77
    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v14

    move v4, v14

    .line 78
    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v14

    move v8, v14

    .line 71
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 80
    :cond_1
    move v14, v3

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    .line 81
    const/4 v14, 0x1

    move v10, v14

    .line 82
    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getShort()S

    move-result v14

    move v4, v14

    .line 83
    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt()I

    move-result v14

    move v2, v14

    .line 84
    .local v2, "offset":I
    move v14, v4

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    .line 85
    :sswitch_0
    move v14, v2

    move v5, v14

    goto :goto_1

    .line 86
    :sswitch_1
    move v14, v2

    move v6, v14

    goto :goto_1

    .line 87
    :sswitch_2
    move v14, v2

    move v7, v14

    goto :goto_1

    .line 93
    .end local v2    # "offset":I
    .end local v3    # "platformID":I
    :cond_2
    move v14, v10

    if-eqz v14, :cond_6

    .line 94
    move v14, v7

    if-eqz v14, :cond_4

    .line 95
    move-object v14, v11

    move v15, v7

    invoke-static {v14, v15}, Lcom/sun/javafx/font/CMap;->createCMap(Lcom/sun/javafx/font/FontFileReader$Buffer;I)Lcom/sun/javafx/font/CMap;

    move-result-object v14

    move-object v1, v14

    .line 119
    :cond_3
    :goto_2
    move-object v14, v1

    move-object v0, v14

    .end local v0    # "font":Lcom/sun/javafx/font/PrismFontFile;
    return-object v0

    .line 97
    .restart local v0    # "font":Lcom/sun/javafx/font/PrismFontFile;
    :cond_4
    move v14, v5

    if-eqz v14, :cond_5

    .line 98
    move-object v14, v11

    move v15, v5

    invoke-static {v14, v15}, Lcom/sun/javafx/font/CMap;->createCMap(Lcom/sun/javafx/font/FontFileReader$Buffer;I)Lcom/sun/javafx/font/CMap;

    move-result-object v14

    move-object v1, v14

    goto :goto_2

    .line 100
    :cond_5
    move v14, v6

    if-eqz v14, :cond_3

    .line 101
    move-object v14, v11

    move v15, v6

    invoke-static {v14, v15}, Lcom/sun/javafx/font/CMap;->createCMap(Lcom/sun/javafx/font/FontFileReader$Buffer;I)Lcom/sun/javafx/font/CMap;

    move-result-object v14

    move-object v1, v14

    goto :goto_2

    .line 103
    :cond_6
    move v14, v9

    if-eqz v14, :cond_7

    move v14, v8

    if-eqz v14, :cond_7

    .line 104
    move-object v14, v11

    move v15, v8

    invoke-static {v14, v15}, Lcom/sun/javafx/font/CMap;->createCMap(Lcom/sun/javafx/font/FontFileReader$Buffer;I)Lcom/sun/javafx/font/CMap;

    move-result-object v14

    move-object v1, v14

    goto :goto_2

    .line 117
    :cond_7
    move-object v14, v11

    move-object v15, v11

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/font/FontFileReader$Buffer;->getInt(I)I

    move-result v15

    invoke-static {v14, v15}, Lcom/sun/javafx/font/CMap;->createCMap(Lcom/sun/javafx/font/FontFileReader$Buffer;I)Lcom/sun/javafx/font/CMap;

    move-result-object v14

    move-object v1, v14

    goto :goto_2

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method final getControlCodeGlyph(IZ)I
    .locals 5

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/CMap;
    move v1, p1

    .local v1, "charCode":I
    move v2, p2

    .local v2, "noSurrogates":Z
    move v3, v1

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 606
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 609
    .line 620
    :cond_0
    :pswitch_0
    const/4 v3, -0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/font/CMap;
    :goto_0
    return v0

    .line 609
    .restart local v0    # "this":Lcom/sun/javafx/font/CMap;
    :pswitch_1
    const v3, 0xffff

    move v0, v3

    goto :goto_0

    .line 611
    :cond_1
    move v3, v1

    const/16 v4, 0x200c

    if-lt v3, v4, :cond_0

    .line 612
    move v3, v1

    const/16 v4, 0x200f

    if-le v3, v4, :cond_3

    move v3, v1

    const/16 v4, 0x2028

    if-lt v3, v4, :cond_2

    move v3, v1

    const/16 v4, 0x202e

    if-le v3, v4, :cond_3

    :cond_2
    move v3, v1

    const/16 v4, 0x206a

    if-lt v3, v4, :cond_4

    move v3, v1

    const/16 v4, 0x206f

    if-gt v3, v4, :cond_4

    .line 615
    :cond_3
    const v3, 0xffff

    move v0, v3

    goto :goto_0

    .line 616
    :cond_4
    move v3, v2

    if-eqz v3, :cond_0

    move v3, v1

    const v4, 0xffff

    if-lt v3, v4, :cond_0

    .line 617
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method abstract getGlyph(I)C
.end method
