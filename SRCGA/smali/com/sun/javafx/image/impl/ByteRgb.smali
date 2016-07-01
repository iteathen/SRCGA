.class public Lcom/sun/javafx/image/impl/ByteRgb;
.super Ljava/lang/Object;
.source "ByteRgb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/ByteRgb$SwapThreeByteConverter;,
        Lcom/sun/javafx/image/impl/ByteRgb$ToByteFrgbConv;,
        Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;,
        Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;,
        Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    }
.end annotation


# static fields
.field public static final getter:Lcom/sun/javafx/image/BytePixelGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgb$Getter;->instance:Lcom/sun/javafx/image/BytePixelGetter;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgb;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToByteArgbConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgb$ToByteFrgbConv;->nonpremult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static final ToByteBgrConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgb$SwapThreeByteConverter;->rgbToBgrInstance:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;->nonpremult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;->premult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToIntArgbConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;->nonpremult:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-object v0
.end method

.method public static ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;->premult:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-object v0
.end method
