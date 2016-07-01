.class public Lcom/sun/javafx/image/impl/ByteBgraPre;
.super Ljava/lang/Object;
.source "ByteBgraPre.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/ByteBgraPre$ToIntArgbConv;,
        Lcom/sun/javafx/image/impl/ByteBgraPre$ToByteBgraConv;,
        Lcom/sun/javafx/image/impl/ByteBgraPre$Accessor;
    }
.end annotation


# static fields
.field private static ToByteBgraPreObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

.field public static final accessor:Lcom/sun/javafx/image/BytePixelAccessor;

.field public static final getter:Lcom/sun/javafx/image/BytePixelGetter;

.field public static final setter:Lcom/sun/javafx/image/BytePixelSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    .line 40
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    .line 41
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgraPre;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre$ToByteBgraConv;->instance:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre;->ToByteBgraPreObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    invoke-static {v0}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->create(Lcom/sun/javafx/image/BytePixelAccessor;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre;->ToByteBgraPreObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    .line 52
    :cond_0
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre;->ToByteBgraPreObj:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToIntArgbConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre$ToIntArgbConv;->instance:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-object v0
.end method

.method public static ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;->premul:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-object v0
.end method
