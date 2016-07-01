.class public Lcom/sun/javafx/image/impl/ByteBgra;
.super Ljava/lang/Object;
.source "ByteBgra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbPreConv;,
        Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;,
        Lcom/sun/javafx/image/impl/ByteBgra$ToByteBgraPreConv;,
        Lcom/sun/javafx/image/impl/ByteBgra$Accessor;
    }
.end annotation


# static fields
.field private static ToByteBgraConv:Lcom/sun/javafx/image/ByteToBytePixelConverter;

.field public static final accessor:Lcom/sun/javafx/image/BytePixelAccessor;

.field public static final getter:Lcom/sun/javafx/image/BytePixelGetter;

.field public static final setter:Lcom/sun/javafx/image/BytePixelSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgra;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    .line 40
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    .line 41
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgra;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgra;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra;->ToByteBgraConv:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    invoke-static {v0}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->create(Lcom/sun/javafx/image/BytePixelAccessor;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgra;->ToByteBgraConv:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    .line 48
    :cond_0
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra;->ToByteBgraConv:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra$ToByteBgraPreConv;->instance:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToIntArgbConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;->nonpremul:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-object v0
.end method

.method public static ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbPreConv;->instance:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-object v0
.end method
