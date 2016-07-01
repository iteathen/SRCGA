.class public Lcom/sun/javafx/image/impl/ByteRgba;
.super Ljava/lang/Object;
.source "ByteRgba.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/ByteRgba$ToIntArgbPreConv;,
        Lcom/sun/javafx/image/impl/ByteRgba$ToIntArgbSameConv;,
        Lcom/sun/javafx/image/impl/ByteRgba$ToByteBgraPreConv;,
        Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    }
.end annotation


# static fields
.field private static ToByteBgraObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

.field private static ToByteRgbaObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

.field public static final accessor:Lcom/sun/javafx/image/BytePixelAccessor;

.field public static final getter:Lcom/sun/javafx/image/BytePixelGetter;

.field public static final setter:Lcom/sun/javafx/image/BytePixelSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    .line 40
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    .line 41
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 6

    .prologue
    .line 53
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->ToByteBgraObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    sget-object v1, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->createReorderer(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;IIII)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->ToByteBgraObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    .line 58
    :cond_0
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->ToByteBgraObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteRgbaConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->ToByteRgbaObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    invoke-static {v0}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->create(Lcom/sun/javafx/image/BytePixelAccessor;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->ToByteRgbaObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    .line 48
    :cond_0
    sget-object v0, Lcom/sun/javafx/image/impl/ByteRgba;->ToByteRgbaObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method
