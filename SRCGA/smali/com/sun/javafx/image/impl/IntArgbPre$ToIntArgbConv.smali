.class public Lcom/sun/javafx/image/impl/IntArgbPre$ToIntArgbConv;
.super Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
.source "IntArgbPre.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/IntArgbPre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToIntArgbConv"
.end annotation


# static fields
.field public static final instance:Lcom/sun/javafx/image/IntToIntPixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcom/sun/javafx/image/impl/IntArgbPre$ToIntArgbConv;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/IntArgbPre$ToIntArgbConv;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgbPre$ToIntArgbConv;->instance:Lcom/sun/javafx/image/IntToIntPixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$ToIntArgbConv;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgbPre;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 129
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 21

    .prologue
    .line 161
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/IntArgbPre$ToIntArgbConv;
    move-object/from16 v3, p1

    .local v3, "srcbuf":Ljava/nio/IntBuffer;
    move/from16 v4, p2

    .local v4, "srcoff":I
    move/from16 v5, p3

    .local v5, "srcscanints":I
    move-object/from16 v6, p4

    .local v6, "dstbuf":Ljava/nio/IntBuffer;
    move/from16 v7, p5

    .local v7, "dstoff":I
    move/from16 v8, p6

    .local v8, "dstscanints":I
    move/from16 v9, p7

    .local v9, "w":I
    move/from16 v10, p8

    .local v10, "h":I
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v18, v10

    if-ltz v18, :cond_2

    .line 162
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "x":I
    :goto_1
    move/from16 v18, v11

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 163
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v11

    add-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/nio/IntBuffer;->get(I)I

    move-result v18

    move/from16 v12, v18

    .line 164
    .local v12, "pixel":I
    move/from16 v18, v12

    const/16 v19, 0x18

    ushr-int/lit8 v18, v18, 0x18

    move/from16 v13, v18

    .line 165
    .local v13, "a":I
    move/from16 v18, v13

    if-lez v18, :cond_0

    move/from16 v18, v13

    const/16 v19, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 166
    move/from16 v18, v13

    const/16 v19, 0x1

    shr-int/lit8 v18, v18, 0x1

    move/from16 v14, v18

    .line 167
    .local v14, "halfa":I
    move/from16 v18, v12

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v14

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v15, v18

    .line 168
    .local v15, "r":I
    move/from16 v18, v12

    const/16 v19, 0x8

    shr-int/lit8 v18, v18, 0x8

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v14

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v16, v18

    .line 169
    .local v16, "g":I
    move/from16 v18, v12

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v14

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v17, v18

    .line 170
    .local v17, "b":I
    move/from16 v18, v13

    const/16 v19, 0x18

    shl-int/lit8 v18, v18, 0x18

    move/from16 v19, v15

    const/16 v20, 0x10

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    move/from16 v19, v16

    const/16 v20, 0x8

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    move/from16 v19, v17

    or-int v18, v18, v19

    move/from16 v12, v18

    .line 172
    .end local v14    # "halfa":I
    .end local v15    # "r":I
    .end local v16    # "g":I
    .end local v17    # "b":I
    :cond_0
    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v11

    add-int v19, v19, v20

    move/from16 v20, v12

    invoke-virtual/range {v18 .. v20}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v18

    .line 162
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 174
    .end local v12    # "pixel":I
    .end local v13    # "a":I
    :cond_1
    move/from16 v18, v4

    move/from16 v19, v5

    add-int v18, v18, v19

    move/from16 v4, v18

    .line 175
    move/from16 v18, v7

    move/from16 v19, v8

    add-int v18, v18, v19

    move/from16 v7, v18

    goto/16 :goto_0

    .line 177
    .end local v11    # "x":I
    :cond_2
    return-void
.end method

.method doConvert([III[IIIII)V
    .locals 21

    .prologue
    .line 136
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/IntArgbPre$ToIntArgbConv;
    move-object/from16 v3, p1

    .local v3, "srcarr":[I
    move/from16 v4, p2

    .local v4, "srcoff":I
    move/from16 v5, p3

    .local v5, "srcscanints":I
    move-object/from16 v6, p4

    .local v6, "dstarr":[I
    move/from16 v7, p5

    .local v7, "dstoff":I
    move/from16 v8, p6

    .local v8, "dstscanints":I
    move/from16 v9, p7

    .local v9, "w":I
    move/from16 v10, p8

    .local v10, "h":I
    move/from16 v18, v5

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v5, v18

    .line 137
    move/from16 v18, v8

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v8, v18

    .line 138
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v18, v10

    if-ltz v18, :cond_2

    .line 139
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "x":I
    :goto_1
    move/from16 v18, v11

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 140
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    aget v18, v18, v19

    move/from16 v12, v18

    .line 141
    .local v12, "pixel":I
    move/from16 v18, v12

    const/16 v19, 0x18

    ushr-int/lit8 v18, v18, 0x18

    move/from16 v13, v18

    .line 142
    .local v13, "a":I
    move/from16 v18, v13

    if-lez v18, :cond_0

    move/from16 v18, v13

    const/16 v19, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 143
    move/from16 v18, v13

    const/16 v19, 0x1

    shr-int/lit8 v18, v18, 0x1

    move/from16 v14, v18

    .line 144
    .local v14, "halfa":I
    move/from16 v18, v12

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v14

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v15, v18

    .line 145
    .local v15, "r":I
    move/from16 v18, v12

    const/16 v19, 0x8

    shr-int/lit8 v18, v18, 0x8

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v14

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v16, v18

    .line 146
    .local v16, "g":I
    move/from16 v18, v12

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v14

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v17, v18

    .line 147
    .local v17, "b":I
    move/from16 v18, v13

    const/16 v19, 0x18

    shl-int/lit8 v18, v18, 0x18

    move/from16 v19, v15

    const/16 v20, 0x10

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    move/from16 v19, v16

    const/16 v20, 0x8

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    move/from16 v19, v17

    or-int v18, v18, v19

    move/from16 v12, v18

    .line 149
    .end local v14    # "halfa":I
    .end local v15    # "r":I
    .end local v16    # "g":I
    .end local v17    # "b":I
    :cond_0
    move-object/from16 v18, v6

    move/from16 v19, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v20, v12

    aput v20, v18, v19

    .line 139
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 151
    .end local v12    # "pixel":I
    .end local v13    # "a":I
    :cond_1
    move/from16 v18, v4

    move/from16 v19, v5

    add-int v18, v18, v19

    move/from16 v4, v18

    .line 152
    move/from16 v18, v7

    move/from16 v19, v8

    add-int v18, v18, v19

    move/from16 v7, v18

    goto/16 :goto_0

    .line 154
    .end local v11    # "x":I
    :cond_2
    return-void
.end method
