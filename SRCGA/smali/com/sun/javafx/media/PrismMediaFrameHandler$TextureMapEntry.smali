.class Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;
.super Ljava/lang/Object;
.source "PrismMediaFrameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/media/PrismMediaFrameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextureMapEntry"
.end annotation


# instance fields
.field public encodedHeight:I

.field public encodedWidth:I

.field public lastFrameTime:D

.field public texture:Lcom/sun/prism/Texture;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 289
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;->lastFrameTime:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/media/PrismMediaFrameHandler$1;)V
    .locals 3

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/media/PrismMediaFrameHandler$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/media/PrismMediaFrameHandler$TextureMapEntry;-><init>()V

    return-void
.end method
