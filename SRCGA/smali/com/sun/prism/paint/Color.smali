.class public final Lcom/sun/prism/paint/Color;
.super Lcom/sun/prism/paint/Paint;
.source "Color.java"


# static fields
.field public static final BLACK:Lcom/sun/prism/paint/Color;

.field public static final BLUE:Lcom/sun/prism/paint/Color;

.field public static final GREEN:Lcom/sun/prism/paint/Color;

.field public static final RED:Lcom/sun/prism/paint/Color;

.field public static final TRANSPARENT:Lcom/sun/prism/paint/Color;

.field public static final WHITE:Lcom/sun/prism/paint/Color;


# instance fields
.field private final a:F

.field private final argb:I

.field private final b:F

.field private final g:F

.field private final r:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 37
    new-instance v0, Lcom/sun/prism/paint/Color;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    sput-object v0, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    .line 38
    new-instance v0, Lcom/sun/prism/paint/Color;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    sput-object v0, Lcom/sun/prism/paint/Color;->BLACK:Lcom/sun/prism/paint/Color;

    .line 39
    new-instance v0, Lcom/sun/prism/paint/Color;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    sput-object v0, Lcom/sun/prism/paint/Color;->RED:Lcom/sun/prism/paint/Color;

    .line 40
    new-instance v0, Lcom/sun/prism/paint/Color;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    sput-object v0, Lcom/sun/prism/paint/Color;->GREEN:Lcom/sun/prism/paint/Color;

    .line 41
    new-instance v0, Lcom/sun/prism/paint/Color;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    sput-object v0, Lcom/sun/prism/paint/Color;->BLUE:Lcom/sun/prism/paint/Color;

    .line 42
    new-instance v0, Lcom/sun/prism/paint/Color;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    sput-object v0, Lcom/sun/prism/paint/Color;->TRANSPARENT:Lcom/sun/prism/paint/Color;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 14

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/paint/Color;
    move v2, p1

    .local v2, "r":F
    move/from16 v3, p2

    .local v3, "g":F
    move/from16 v4, p3

    .local v4, "b":F
    move/from16 v5, p4

    .local v5, "a":F
    move-object v10, v1

    sget-object v11, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/prism/paint/Paint;-><init>(Lcom/sun/prism/paint/Paint$Type;ZZ)V

    .line 56
    const-wide v10, 0x406fe00000000000L    # 255.0

    move v12, v5

    float-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    move v6, v10

    .line 57
    .local v6, "ia":I
    const-wide v10, 0x406fe00000000000L    # 255.0

    move v12, v2

    float-to-double v12, v12

    mul-double/2addr v10, v12

    move v12, v5

    float-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    move v7, v10

    .line 58
    .local v7, "ir":I
    const-wide v10, 0x406fe00000000000L    # 255.0

    move v12, v3

    float-to-double v12, v12

    mul-double/2addr v10, v12

    move v12, v5

    float-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    move v8, v10

    .line 59
    .local v8, "ig":I
    const-wide v10, 0x406fe00000000000L    # 255.0

    move v12, v4

    float-to-double v12, v12

    mul-double/2addr v10, v12

    move v12, v5

    float-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    move v9, v10

    .line 60
    .local v9, "ib":I
    move-object v10, v1

    move v11, v6

    const/16 v12, 0x18

    shl-int/lit8 v11, v11, 0x18

    move v12, v7

    const/16 v13, 0x10

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    move v12, v8

    const/16 v13, 0x8

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    move v12, v9

    const/4 v13, 0x0

    shl-int/lit8 v12, v12, 0x0

    or-int/2addr v11, v12

    iput v11, v10, Lcom/sun/prism/paint/Color;->argb:I

    .line 61
    move-object v10, v1

    move v11, v2

    iput v11, v10, Lcom/sun/prism/paint/Color;->r:F

    .line 62
    move-object v10, v1

    move v11, v3

    iput v11, v10, Lcom/sun/prism/paint/Color;->g:F

    .line 63
    move-object v10, v1

    move v11, v4

    iput v11, v10, Lcom/sun/prism/paint/Color;->b:F

    .line 64
    move-object v10, v1

    move v11, v5

    iput v11, v10, Lcom/sun/prism/paint/Color;->a:F

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/prism/paint/Color;

    if-nez v3, :cond_0

    .line 160
    const/4 v3, 0x0

    move v0, v3

    .line 164
    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    :goto_0
    return v0

    .line 163
    .restart local v0    # "this":Lcom/sun/prism/paint/Color;
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/sun/prism/paint/Color;

    move-object v2, v3

    .line 164
    .local v2, "other":Lcom/sun/prism/paint/Color;
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->r:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/prism/paint/Color;->r:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->g:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/prism/paint/Color;->g:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->b:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/prism/paint/Color;->b:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->a:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/prism/paint/Color;->a:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Color;->a:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0
.end method

.method public getBlue()F
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Color;->b:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0
.end method

.method public getBluePremult()F
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Color;->b:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/Color;->a:F

    mul-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0
.end method

.method public getGreen()F
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Color;->g:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0
.end method

.method public getGreenPremult()F
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Color;->g:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/Color;->a:F

    mul-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0
.end method

.method public getIntArgbPre()I
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Color;->argb:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0
.end method

.method public getRed()F
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Color;->r:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0
.end method

.method public getRedPremult()F
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Color;->r:F

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/Color;->a:F

    mul-float/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    const/4 v2, 0x3

    move v1, v2

    .line 174
    .local v1, "hash":I
    const/16 v2, 0x35

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->r:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 175
    const/16 v2, 0x35

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->g:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 176
    const/16 v2, 0x35

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 177
    const/16 v2, 0x35

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 178
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0
.end method

.method public isOpaque()Z
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Color;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/paint/Color;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putBgraPreBytes(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->argb:I

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 92
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->argb:I

    const/16 v4, 0x8

    shr-int/lit8 v3, v3, 0x8

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 93
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->argb:I

    const/16 v4, 0x10

    shr-int/lit8 v3, v3, 0x10

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 94
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Color;->argb:I

    const/16 v4, 0x18

    shr-int/lit8 v3, v3, 0x18

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 95
    return-void
.end method

.method public putRgbaPreBytes([BI)V
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/paint/Color;->argb:I

    const/16 v6, 0x10

    shr-int/lit8 v5, v5, 0x10

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 81
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/paint/Color;->argb:I

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 82
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/paint/Color;->argb:I

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 83
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/paint/Color;->argb:I

    const/16 v6, 0x18

    shr-int/lit8 v5, v5, 0x18

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Color;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color[r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/Color;->r:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/Color;->g:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/Color;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/Color;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Color;
    return-object v0
.end method
