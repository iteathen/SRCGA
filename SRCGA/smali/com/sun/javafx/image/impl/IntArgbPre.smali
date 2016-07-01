.class public Lcom/sun/javafx/image/impl/IntArgbPre;
.super Ljava/lang/Object;
.source "IntArgbPre.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/IntArgbPre$ToByteBgraConv;,
        Lcom/sun/javafx/image/impl/IntArgbPre$ToIntArgbConv;,
        Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    }
.end annotation


# static fields
.field private static ToByteBgraPreObj:Lcom/sun/javafx/image/IntToBytePixelConverter;

.field private static ToIntArgbPreObj:Lcom/sun/javafx/image/IntToIntPixelConverter;

.field public static final accessor:Lcom/sun/javafx/image/IntPixelAccessor;

.field public static final getter:Lcom/sun/javafx/image/IntPixelGetter;

.field public static final setter:Lcom/sun/javafx/image/IntPixelSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;->instance:Lcom/sun/javafx/image/IntPixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    .line 40
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;->instance:Lcom/sun/javafx/image/IntPixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    .line 41
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;->instance:Lcom/sun/javafx/image/IntPixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->accessor:Lcom/sun/javafx/image/IntPixelAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToByteBgraConverter()Lcom/sun/javafx/image/IntToBytePixelConverter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre$ToByteBgraConv;->instance:Lcom/sun/javafx/image/IntToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteBgraPreConverter()Lcom/sun/javafx/image/IntToBytePixelConverter;
    .locals 5

    .prologue
    .line 49
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->ToByteBgraPreObj:Lcom/sun/javafx/image/IntToBytePixelConverter;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/sun/javafx/image/impl/IntTo4ByteSameConverter;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgbPre;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/IntTo4ByteSameConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->ToByteBgraPreObj:Lcom/sun/javafx/image/IntToBytePixelConverter;

    .line 53
    :cond_0
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->ToByteBgraPreObj:Lcom/sun/javafx/image/IntToBytePixelConverter;

    return-object v0
.end method

.method public static ToIntArgbConverter()Lcom/sun/javafx/image/IntToIntPixelConverter;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre$ToIntArgbConv;->instance:Lcom/sun/javafx/image/IntToIntPixelConverter;

    return-object v0
.end method

.method public static ToIntArgbPreConverter()Lcom/sun/javafx/image/IntToIntPixelConverter;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->ToIntArgbPreObj:Lcom/sun/javafx/image/IntToIntPixelConverter;

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->accessor:Lcom/sun/javafx/image/IntPixelAccessor;

    invoke-static {v0}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->create(Lcom/sun/javafx/image/IntPixelAccessor;)Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->ToIntArgbPreObj:Lcom/sun/javafx/image/IntToIntPixelConverter;

    .line 65
    :cond_0
    sget-object v0, Lcom/sun/javafx/image/impl/IntArgbPre;->ToIntArgbPreObj:Lcom/sun/javafx/image/IntToIntPixelConverter;

    return-object v0
.end method
