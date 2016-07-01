.class public Lcom/sun/javafx/image/impl/IntArgb$ToIntArgbPreConv;
.super Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
.source "IntArgb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/IntArgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToIntArgbPreConv"
.end annotation


# static fields
.field public static final instance:Lcom/sun/javafx/image/IntToIntPixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/sun/javafx/image/impl/IntArgb$ToIntArgbPreConv;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/IntArgb$ToIntArgbPreConv;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgb$ToIntArgbPreConv;->instance:Lcom/sun/javafx/image/IntToIntPixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgb$ToIntArgbPreConv;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgb;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 128
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 20

    .prologue
    .line 163
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/IntArgb$ToIntArgbPreConv;
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

    move/from16 v17, v10

    if-ltz v17, :cond_3

    .line 164
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "x":I
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 165
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v11

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/nio/IntBuffer;->get(I)I

    move-result v17

    move/from16 v12, v17

    .line 166
    .local v12, "pixel":I
    move/from16 v17, v12

    const/16 v18, 0x18

    ushr-int/lit8 v17, v17, 0x18

    move/from16 v13, v17

    .line 167
    .local v13, "a":I
    move/from16 v17, v13

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 168
    move/from16 v17, v13

    if-nez v17, :cond_1

    .line 169
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 177
    :cond_0
    :goto_2
    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v19, v12

    invoke-virtual/range {v17 .. v19}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v17

    .line 164
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 171
    :cond_1
    move/from16 v17, v12

    const/16 v18, 0x10

    shr-int/lit8 v17, v17, 0x10

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v14, v17

    .line 172
    .local v14, "r":I
    move/from16 v17, v12

    const/16 v18, 0x8

    shr-int/lit8 v17, v17, 0x8

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v15, v17

    .line 173
    .local v15, "g":I
    move/from16 v17, v12

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v16, v17

    .line 174
    .local v16, "b":I
    move/from16 v17, v13

    const/16 v18, 0x18

    shl-int/lit8 v17, v17, 0x18

    move/from16 v18, v14

    const/16 v19, 0x10

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    move/from16 v18, v15

    const/16 v19, 0x8

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    move/from16 v18, v16

    or-int v17, v17, v18

    move/from16 v12, v17

    goto/16 :goto_2

    .line 179
    .end local v12    # "pixel":I
    .end local v13    # "a":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    .end local v16    # "b":I
    :cond_2
    move/from16 v17, v4

    move/from16 v18, v5

    add-int v17, v17, v18

    move/from16 v4, v17

    .line 180
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v7, v17

    goto/16 :goto_0

    .line 182
    .end local v11    # "x":I
    :cond_3
    return-void
.end method

.method doConvert([III[IIIII)V
    .locals 20

    .prologue
    .line 135
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/IntArgb$ToIntArgbPreConv;
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
    move/from16 v17, v5

    move/from16 v18, v9

    sub-int v17, v17, v18

    move/from16 v5, v17

    .line 136
    move/from16 v17, v8

    move/from16 v18, v9

    sub-int v17, v17, v18

    move/from16 v8, v17

    .line 137
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v17, v10

    if-ltz v17, :cond_3

    .line 138
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "x":I
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 139
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget v17, v17, v18

    move/from16 v12, v17

    .line 140
    .local v12, "pixel":I
    move/from16 v17, v12

    const/16 v18, 0x18

    ushr-int/lit8 v17, v17, 0x18

    move/from16 v13, v17

    .line 141
    .local v13, "a":I
    move/from16 v17, v13

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 142
    move/from16 v17, v13

    if-nez v17, :cond_1

    .line 143
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 151
    :cond_0
    :goto_2
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v12

    aput v19, v17, v18

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 145
    :cond_1
    move/from16 v17, v12

    const/16 v18, 0x10

    shr-int/lit8 v17, v17, 0x10

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v14, v17

    .line 146
    .local v14, "r":I
    move/from16 v17, v12

    const/16 v18, 0x8

    shr-int/lit8 v17, v17, 0x8

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v15, v17

    .line 147
    .local v15, "g":I
    move/from16 v17, v12

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v16, v17

    .line 148
    .local v16, "b":I
    move/from16 v17, v13

    const/16 v18, 0x18

    shl-int/lit8 v17, v17, 0x18

    move/from16 v18, v14

    const/16 v19, 0x10

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    move/from16 v18, v15

    const/16 v19, 0x8

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    move/from16 v18, v16

    or-int v17, v17, v18

    move/from16 v12, v17

    goto/16 :goto_2

    .line 153
    .end local v12    # "pixel":I
    .end local v13    # "a":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    .end local v16    # "b":I
    :cond_2
    move/from16 v17, v4

    move/from16 v18, v5

    add-int v17, v17, v18

    move/from16 v4, v17

    .line 154
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v7, v17

    goto/16 :goto_0

    .line 156
    .end local v11    # "x":I
    :cond_3
    return-void
.end method
