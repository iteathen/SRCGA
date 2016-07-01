.class public final enum Lcom/sun/javafx/iio/ImageStorage$ImageType;
.super Ljava/lang/Enum;
.source "ImageStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/iio/ImageStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/iio/ImageStorage$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum GRAY:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum GRAY_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum GRAY_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum PALETTE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum PALETTE_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum PALETTE_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum PALETTE_TRANS:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum RGBA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field public static final enum RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 59
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GRAY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 64
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GRAY_ALPHA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 69
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GRAY_ALPHA_PRE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 74
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PALETTE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 80
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PALETTE_ALPHA"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 86
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PALETTE_ALPHA_PRE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 93
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PALETTE_TRANS"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_TRANS:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 98
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RGB"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 104
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RGBA"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 110
    new-instance v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RGBA_PRE"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_TRANS:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->$VALUES:[Lcom/sun/javafx/iio/ImageStorage$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/iio/ImageStorage$ImageType;
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/iio/ImageStorage$ImageType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/sun/javafx/iio/ImageStorage$ImageType;->$VALUES:[Lcom/sun/javafx/iio/ImageStorage$ImageType;

    invoke-virtual {v0}, [Lcom/sun/javafx/iio/ImageStorage$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/iio/ImageStorage$ImageType;

    return-object v0
.end method
