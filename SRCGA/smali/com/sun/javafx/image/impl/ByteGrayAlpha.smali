.class public Lcom/sun/javafx/image/impl/ByteGrayAlpha;
.super Ljava/lang/Object;
.source "ByteGrayAlpha.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;,
        Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteGrayAlphaPreConv;,
        Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    }
.end annotation


# static fields
.field public static final accessor:Lcom/sun/javafx/image/BytePixelAccessor;

.field public static final getter:Lcom/sun/javafx/image/BytePixelGetter;

.field public static final setter:Lcom/sun/javafx/image/BytePixelSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->nonpremul:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    .line 38
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->nonpremul:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    .line 39
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->nonpremul:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;->nonpremul:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method

.method public static ToByteGrayAlphaPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteGrayAlphaPreConv;->instance:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method
