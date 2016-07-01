.class Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;
.super Ljava/lang/Object;
.source "PrismImageLoader2.java"

# interfaces
.implements Lcom/sun/javafx/iio/ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrismLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/PrismImageLoader2;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/PrismImageLoader2;)V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;->this$0:Lcom/sun/javafx/tk/quantum/PrismImageLoader2;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/PrismImageLoader2;Lcom/sun/javafx/tk/quantum/PrismImageLoader2$1;)V
    .locals 5

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;-><init>(Lcom/sun/javafx/tk/quantum/PrismImageLoader2;)V

    return-void
.end method


# virtual methods
.method public imageLoadMetaData(Lcom/sun/javafx/iio/ImageLoader;Lcom/sun/javafx/iio/ImageMetadata;)V
    .locals 0
    .param p1, "loader"    # Lcom/sun/javafx/iio/ImageLoader;
    .param p2, "metadata"    # Lcom/sun/javafx/iio/ImageMetadata;

    .prologue
    .line 222
    return-void
.end method

.method public imageLoadProgress(Lcom/sun/javafx/iio/ImageLoader;F)V
    .locals 0
    .param p1, "loader"    # Lcom/sun/javafx/iio/ImageLoader;
    .param p2, "percentageComplete"    # F

    .prologue
    .line 218
    return-void
.end method

.method public imageLoadWarning(Lcom/sun/javafx/iio/ImageLoader;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$PrismLoadListener;
    move-object v1, p1

    .local v1, "loader":Lcom/sun/javafx/iio/ImageLoader;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    # invokes: Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->getImageioLogger()Lsun/util/logging/PlatformLogger;
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;->access$100()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 207
    return-void
.end method
