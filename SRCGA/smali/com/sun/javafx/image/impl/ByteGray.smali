.class public Lcom/sun/javafx/image/impl/ByteGray;
.super Ljava/lang/Object;
.source "ByteGray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;,
        Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;,
        Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;,
        Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    }
.end annotation


# static fields
.field private static ToByteGrayObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

.field public static final accessor:Lcom/sun/javafx/image/BytePixelAccessor;

.field public static final getter:Lcom/sun/javafx/image/BytePixelGetter;

.field public static final setter:Lcom/sun/javafx/image/BytePixelSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    .line 41
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    .line 42
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToByteBgrConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;->bgr:Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;

    return-object v0
.end method

.method public static ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;->nonpremult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;->premult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteGrayConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray;->ToByteGrayObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    invoke-static {v0}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->create(Lcom/sun/javafx/image/BytePixelAccessor;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray;->ToByteGrayObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    .line 49
    :cond_0
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray;->ToByteGrayObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToIntArgbConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;->nonpremult:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-object v0
.end method

.method public static ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;->premult:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-object v0
.end method
