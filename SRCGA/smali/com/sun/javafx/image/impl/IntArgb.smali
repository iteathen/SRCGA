.class public Lcom/sun/javafx/image/impl/IntArgb;
.super Ljava/lang/Object;
.source "IntArgb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/IntArgb$ToByteBgraPreConv;,
        Lcom/sun/javafx/image/impl/IntArgb$ToIntArgbPreConv;,
        Lcom/sun/javafx/image/impl/IntArgb$Accessor;
    }
.end annotation


# static fields
.field private static ToByteBgraObj:Lcom/sun/javafx/image/IntToBytePixelConverter;

.field private static ToIntArgbObj:Lcom/sun/javafx/image/IntToIntPixelConverter;

.field public static final accessor:Lcom/sun/javafx/image/IntPixelAccessor;

.field public static final getter:Lcom/sun/javafx/image/IntPixelGetter;

.field public static final setter:Lcom/sun/javafx/image/IntPixelSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb$Accessor;->instance:Lcom/sun/javafx/image/IntPixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgb;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    .line 40
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb$Accessor;->instance:Lcom/sun/javafx/image/IntPixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    .line 41
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb$Accessor;->instance:Lcom/sun/javafx/image/IntPixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgb;->accessor:Lcom/sun/javafx/image/IntPixelAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgb;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToByteBgraConverter()Lcom/sun/javafx/image/IntToBytePixelConverter;
    .locals 5

    .prologue
    .line 45
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb;->ToByteBgraObj:Lcom/sun/javafx/image/IntToBytePixelConverter;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/sun/javafx/image/impl/IntTo4ByteSameConverter;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgb;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/IntTo4ByteSameConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgb;->ToByteBgraObj:Lcom/sun/javafx/image/IntToBytePixelConverter;

    .line 48
    :cond_0
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb;->ToByteBgraObj:Lcom/sun/javafx/image/IntToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteBgraPreConverter()Lcom/sun/javafx/image/IntToBytePixelConverter;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb$ToByteBgraPreConv;->instance:Lcom/sun/javafx/image/IntToBytePixelConverter;

    return-object v0
.end method

.method public static ToIntArgbConverter()Lcom/sun/javafx/image/IntToIntPixelConverter;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb;->ToIntArgbObj:Lcom/sun/javafx/image/IntToIntPixelConverter;

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb;->accessor:Lcom/sun/javafx/image/IntPixelAccessor;

    invoke-static {v0}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->create(Lcom/sun/javafx/image/IntPixelAccessor;)Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgb;->ToIntArgbObj:Lcom/sun/javafx/image/IntToIntPixelConverter;

    .line 60
    :cond_0
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb;->ToIntArgbObj:Lcom/sun/javafx/image/IntToIntPixelConverter;

    return-object v0
.end method

.method public static ToIntArgbPreConverter()Lcom/sun/javafx/image/IntToIntPixelConverter;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgb$ToIntArgbPreConv;->instance:Lcom/sun/javafx/image/IntToIntPixelConverter;

    return-object v0
.end method
