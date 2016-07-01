.class public Lcom/sun/javafx/image/impl/ByteGrayAlphaPre;
.super Ljava/lang/Object;
.source "ByteGrayAlphaPre.java"


# static fields
.field public static final accessor:Lcom/sun/javafx/image/BytePixelAccessor;

.field public static final getter:Lcom/sun/javafx/image/BytePixelGetter;

.field public static final setter:Lcom/sun/javafx/image/BytePixelSetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->premul:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlphaPre;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    .line 35
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->premul:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlphaPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    .line 36
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->premul:Lcom/sun/javafx/image/BytePixelAccessor;

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlphaPre;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlphaPre;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;->premul:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-object v0
.end method
