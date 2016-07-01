.class public final enum Lcom/sun/media/jfxmedia/control/VideoFormat;
.super Ljava/lang/Enum;
.source "VideoFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmedia/control/VideoFormat$FormatTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/media/jfxmedia/control/VideoFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/media/jfxmedia/control/VideoFormat;

.field public static final enum ARGB:Lcom/sun/media/jfxmedia/control/VideoFormat;

.field public static final enum BGRA_PRE:Lcom/sun/media/jfxmedia/control/VideoFormat;

.field public static final enum YCbCr_420p:Lcom/sun/media/jfxmedia/control/VideoFormat;

.field public static final enum YCbCr_422:Lcom/sun/media/jfxmedia/control/VideoFormat;

.field private static final lookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sun/media/jfxmedia/control/VideoFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 35
    new-instance v2, Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "ARGB"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmedia/control/VideoFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->ARGB:Lcom/sun/media/jfxmedia/control/VideoFormat;

    .line 38
    new-instance v2, Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "BGRA_PRE"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmedia/control/VideoFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->BGRA_PRE:Lcom/sun/media/jfxmedia/control/VideoFormat;

    .line 41
    new-instance v2, Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "YCbCr_420p"

    const/4 v5, 0x2

    const/16 v6, 0x64

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmedia/control/VideoFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->YCbCr_420p:Lcom/sun/media/jfxmedia/control/VideoFormat;

    .line 44
    new-instance v2, Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "YCbCr_422"

    const/4 v5, 0x3

    const/16 v6, 0x65

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmedia/control/VideoFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->YCbCr_422:Lcom/sun/media/jfxmedia/control/VideoFormat;

    .line 32
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    sget-object v5, Lcom/sun/media/jfxmedia/control/VideoFormat;->ARGB:Lcom/sun/media/jfxmedia/control/VideoFormat;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    sget-object v5, Lcom/sun/media/jfxmedia/control/VideoFormat;->BGRA_PRE:Lcom/sun/media/jfxmedia/control/VideoFormat;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x2

    sget-object v5, Lcom/sun/media/jfxmedia/control/VideoFormat;->YCbCr_420p:Lcom/sun/media/jfxmedia/control/VideoFormat;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x3

    sget-object v5, Lcom/sun/media/jfxmedia/control/VideoFormat;->YCbCr_422:Lcom/sun/media/jfxmedia/control/VideoFormat;

    aput-object v5, v3, v4

    sput-object v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->$VALUES:[Lcom/sun/media/jfxmedia/control/VideoFormat;

    .line 47
    new-instance v2, Ljava/util/HashMap;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->lookupMap:Ljava/util/Map;

    .line 49
    const-class v2, Lcom/sun/media/jfxmedia/control/VideoFormat;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    .local v1, "fmt":Lcom/sun/media/jfxmedia/control/VideoFormat;
    :goto_0
    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-object v1, v2

    .line 50
    sget-object v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->lookupMap:Ljava/util/Map;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/control/VideoFormat;->getNativeType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/control/VideoFormat;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "ntype":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/media/jfxmedia/control/VideoFormat;->nativeType:I

    .line 56
    return-void
.end method

.method public static formatForType(I)Lcom/sun/media/jfxmedia/control/VideoFormat;
    .locals 3

    .prologue
    .line 71
    move v0, p0

    .local v0, "ntype":I
    sget-object v1, Lcom/sun/media/jfxmedia/control/VideoFormat;->lookupMap:Ljava/util/Map;

    move v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-object v0, v1

    .end local v0    # "ntype":I
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/media/jfxmedia/control/VideoFormat;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/media/jfxmedia/control/VideoFormat;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sun/media/jfxmedia/control/VideoFormat;->$VALUES:[Lcom/sun/media/jfxmedia/control/VideoFormat;

    invoke-virtual {v0}, [Lcom/sun/media/jfxmedia/control/VideoFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/media/jfxmedia/control/VideoFormat;

    return-object v0
.end method


# virtual methods
.method public getNativeType()I
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/control/VideoFormat;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/control/VideoFormat;->nativeType:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/control/VideoFormat;
    return v0
.end method

.method public isEqualTo(I)Z
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/control/VideoFormat;
    move v1, p1

    .local v1, "ntype":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->nativeType:I

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmedia/control/VideoFormat;
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/control/VideoFormat;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRGB()Z
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/control/VideoFormat;
    move-object v1, v0

    sget-object v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->ARGB:Lcom/sun/media/jfxmedia/control/VideoFormat;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    sget-object v2, Lcom/sun/media/jfxmedia/control/VideoFormat;->BGRA_PRE:Lcom/sun/media/jfxmedia/control/VideoFormat;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/control/VideoFormat;
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/control/VideoFormat;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
