.class public final enum Lcom/sun/prism/paint/Paint$Type;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/paint/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/paint/Paint$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/paint/Paint$Type;

.field public static final enum COLOR:Lcom/sun/prism/paint/Paint$Type;

.field public static final enum IMAGE_PATTERN:Lcom/sun/prism/paint/Paint$Type;

.field public static final enum LINEAR_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

.field public static final enum RADIAL_GRADIENT:Lcom/sun/prism/paint/Paint$Type;


# instance fields
.field private isGradient:Z

.field private isImagePattern:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 31
    new-instance v0, Lcom/sun/prism/paint/Paint$Type;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const-string v2, "COLOR"

    const/4 v3, 0x0

    const-string v4, "Color"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sun/prism/paint/Paint$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    .line 32
    new-instance v0, Lcom/sun/prism/paint/Paint$Type;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const-string v2, "LINEAR_GRADIENT"

    const/4 v3, 0x1

    const-string v4, "LinearGradient"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sun/prism/paint/Paint$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/sun/prism/paint/Paint$Type;->LINEAR_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

    .line 33
    new-instance v0, Lcom/sun/prism/paint/Paint$Type;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const-string v2, "RADIAL_GRADIENT"

    const/4 v3, 0x2

    const-string v4, "RadialGradient"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sun/prism/paint/Paint$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/sun/prism/paint/Paint$Type;->RADIAL_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

    .line 34
    new-instance v0, Lcom/sun/prism/paint/Paint$Type;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const-string v2, "IMAGE_PATTERN"

    const/4 v3, 0x3

    const-string v4, "ImagePattern"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/sun/prism/paint/Paint$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/sun/prism/paint/Paint$Type;->IMAGE_PATTERN:Lcom/sun/prism/paint/Paint$Type;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/prism/paint/Paint$Type;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/paint/Paint$Type;->LINEAR_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/paint/Paint$Type;->RADIAL_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/prism/paint/Paint$Type;->IMAGE_PATTERN:Lcom/sun/prism/paint/Paint$Type;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/paint/Paint$Type;->$VALUES:[Lcom/sun/prism/paint/Paint$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Paint$Type;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move v4, p4

    .local v4, "isGradient":Z
    move v5, p5

    .local v5, "isImagePattern":Z
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/prism/paint/Paint$Type;->name:Ljava/lang/String;

    .line 41
    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Lcom/sun/prism/paint/Paint$Type;->isGradient:Z

    .line 42
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lcom/sun/prism/paint/Paint$Type;->isImagePattern:Z

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/paint/Paint$Type;
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/paint/Paint$Type;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/paint/Paint$Type;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/paint/Paint$Type;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sun/prism/paint/Paint$Type;->$VALUES:[Lcom/sun/prism/paint/Paint$Type;

    invoke-virtual {v0}, [Lcom/sun/prism/paint/Paint$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/paint/Paint$Type;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Paint$Type;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/paint/Paint$Type;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Paint$Type;
    return-object v0
.end method

.method public isGradient()Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Paint$Type;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/paint/Paint$Type;->isGradient:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Paint$Type;
    return v0
.end method

.method public isImagePattern()Z
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Paint$Type;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/paint/Paint$Type;->isImagePattern:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Paint$Type;
    return v0
.end method
