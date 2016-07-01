.class public final enum Lcom/sun/prism/PixelFormat;
.super Ljava/lang/Enum;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/PixelFormat$DataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/PixelFormat;

.field public static final enum BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

.field public static final enum BYTE_APPLE_422:Lcom/sun/prism/PixelFormat;

.field public static final enum BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

.field public static final enum BYTE_GRAY:Lcom/sun/prism/PixelFormat;

.field public static final enum BYTE_RGB:Lcom/sun/prism/PixelFormat;

.field public static final enum FLOAT_XYZW:Lcom/sun/prism/PixelFormat;

.field public static final enum INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

.field public static final enum MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

.field public static final YCBCR_PLANE_ALPHA:I = 0x3

.field public static final YCBCR_PLANE_CHROMABLUE:I = 0x2

.field public static final YCBCR_PLANE_CHROMARED:I = 0x1

.field public static final YCBCR_PLANE_LUMA:I


# instance fields
.field private dataType:Lcom/sun/prism/PixelFormat$DataType;

.field private elemsPerPixelUnit:I

.field private opaque:Z

.field private rgb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 33
    new-instance v0, Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "INT_ARGB_PRE"

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/prism/PixelFormat$DataType;->INT:Lcom/sun/prism/PixelFormat$DataType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sun/prism/PixelFormat;-><init>(Ljava/lang/String;ILcom/sun/prism/PixelFormat$DataType;IZZ)V

    sput-object v0, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    .line 36
    new-instance v0, Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "BYTE_BGRA_PRE"

    const/4 v3, 0x1

    sget-object v4, Lcom/sun/prism/PixelFormat$DataType;->BYTE:Lcom/sun/prism/PixelFormat$DataType;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sun/prism/PixelFormat;-><init>(Ljava/lang/String;ILcom/sun/prism/PixelFormat$DataType;IZZ)V

    sput-object v0, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    .line 39
    new-instance v0, Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "BYTE_RGB"

    const/4 v3, 0x2

    sget-object v4, Lcom/sun/prism/PixelFormat$DataType;->BYTE:Lcom/sun/prism/PixelFormat$DataType;

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/sun/prism/PixelFormat;-><init>(Ljava/lang/String;ILcom/sun/prism/PixelFormat$DataType;IZZ)V

    sput-object v0, Lcom/sun/prism/PixelFormat;->BYTE_RGB:Lcom/sun/prism/PixelFormat;

    .line 43
    new-instance v0, Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "BYTE_GRAY"

    const/4 v3, 0x3

    sget-object v4, Lcom/sun/prism/PixelFormat$DataType;->BYTE:Lcom/sun/prism/PixelFormat$DataType;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/sun/prism/PixelFormat;-><init>(Ljava/lang/String;ILcom/sun/prism/PixelFormat$DataType;IZZ)V

    sput-object v0, Lcom/sun/prism/PixelFormat;->BYTE_GRAY:Lcom/sun/prism/PixelFormat;

    .line 44
    new-instance v0, Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "BYTE_ALPHA"

    const/4 v3, 0x4

    sget-object v4, Lcom/sun/prism/PixelFormat$DataType;->BYTE:Lcom/sun/prism/PixelFormat$DataType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sun/prism/PixelFormat;-><init>(Ljava/lang/String;ILcom/sun/prism/PixelFormat$DataType;IZZ)V

    sput-object v0, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    .line 47
    new-instance v0, Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "MULTI_YCbCr_420"

    const/4 v3, 0x5

    sget-object v4, Lcom/sun/prism/PixelFormat$DataType;->BYTE:Lcom/sun/prism/PixelFormat$DataType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/sun/prism/PixelFormat;-><init>(Ljava/lang/String;ILcom/sun/prism/PixelFormat$DataType;IZZ)V

    sput-object v0, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    .line 48
    new-instance v0, Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "BYTE_APPLE_422"

    const/4 v3, 0x6

    sget-object v4, Lcom/sun/prism/PixelFormat$DataType;->BYTE:Lcom/sun/prism/PixelFormat$DataType;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/sun/prism/PixelFormat;-><init>(Ljava/lang/String;ILcom/sun/prism/PixelFormat$DataType;IZZ)V

    sput-object v0, Lcom/sun/prism/PixelFormat;->BYTE_APPLE_422:Lcom/sun/prism/PixelFormat;

    .line 51
    new-instance v0, Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const-string v2, "FLOAT_XYZW"

    const/4 v3, 0x7

    sget-object v4, Lcom/sun/prism/PixelFormat$DataType;->FLOAT:Lcom/sun/prism/PixelFormat$DataType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/sun/prism/PixelFormat;-><init>(Ljava/lang/String;ILcom/sun/prism/PixelFormat$DataType;IZZ)V

    sput-object v0, Lcom/sun/prism/PixelFormat;->FLOAT_XYZW:Lcom/sun/prism/PixelFormat;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/PixelFormat;->BYTE_RGB:Lcom/sun/prism/PixelFormat;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/prism/PixelFormat;->BYTE_GRAY:Lcom/sun/prism/PixelFormat;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/prism/PixelFormat;->BYTE_APPLE_422:Lcom/sun/prism/PixelFormat;

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/prism/PixelFormat;->FLOAT_XYZW:Lcom/sun/prism/PixelFormat;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/PixelFormat;->$VALUES:[Lcom/sun/prism/PixelFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sun/prism/PixelFormat$DataType;IZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/PixelFormat$DataType;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PixelFormat;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "dataType":Lcom/sun/prism/PixelFormat$DataType;
    move v4, p4

    .local v4, "elemsPerPixelUnit":I
    move v5, p5

    .local v5, "rgb":Z
    move/from16 v6, p6

    .local v6, "opaque":Z
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/sun/prism/PixelFormat;->dataType:Lcom/sun/prism/PixelFormat$DataType;

    .line 88
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/prism/PixelFormat;->elemsPerPixelUnit:I

    .line 89
    move-object v7, v0

    move v8, v5

    iput-boolean v8, v7, Lcom/sun/prism/PixelFormat;->rgb:Z

    .line 90
    move-object v7, v0

    move v8, v6

    iput-boolean v8, v7, Lcom/sun/prism/PixelFormat;->opaque:Z

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/PixelFormat;
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/PixelFormat;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/PixelFormat;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/PixelFormat;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sun/prism/PixelFormat;->$VALUES:[Lcom/sun/prism/PixelFormat;

    invoke-virtual {v0}, [Lcom/sun/prism/PixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/PixelFormat;

    return-object v0
.end method


# virtual methods
.method public getBytesPerPixelUnit()I
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PixelFormat;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PixelFormat;->elemsPerPixelUnit:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/PixelFormat;->dataType:Lcom/sun/prism/PixelFormat$DataType;

    invoke-virtual {v2}, Lcom/sun/prism/PixelFormat$DataType;->getSizeInBytes()I

    move-result v2

    mul-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PixelFormat;
    return v0
.end method

.method public getDataType()Lcom/sun/prism/PixelFormat$DataType;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PixelFormat;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/PixelFormat;->dataType:Lcom/sun/prism/PixelFormat$DataType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/PixelFormat;
    return-object v0
.end method

.method public getElemsPerPixelUnit()I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PixelFormat;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PixelFormat;->elemsPerPixelUnit:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PixelFormat;
    return v0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PixelFormat;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/PixelFormat;->opaque:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PixelFormat;
    return v0
.end method

.method public isRGB()Z
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PixelFormat;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/PixelFormat;->rgb:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PixelFormat;
    return v0
.end method
