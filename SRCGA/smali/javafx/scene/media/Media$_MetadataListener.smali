.class Ljavafx/scene/media/Media$_MetadataListener;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/MetadataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_MetadataListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/Media;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/Media;)V
    .locals 4

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$_MetadataListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/Media$_MetadataListener;->this$0:Ljavafx/scene/media/Media;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/Media;Ljavafx/scene/media/Media$1;)V
    .locals 5

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$_MetadataListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/Media;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/Media$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/Media$_MetadataListener;-><init>(Ljavafx/scene/media/Media;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/Media$_MetadataListener;Ljava/util/Map;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/Media$_MetadataListener;->lambda$onMetadata$10(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onMetadata$10(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$_MetadataListener;
    move-object v1, p1

    .local v1, "metadata":Ljava/util/Map;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$_MetadataListener;->this$0:Ljavafx/scene/media/Media;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/media/Media;->access$200(Ljavafx/scene/media/Media;Ljava/util/Map;)V

    .line 543
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$_MetadataListener;->this$0:Ljavafx/scene/media/Media;

    invoke-static {v2}, Ljavafx/scene/media/Media;->access$400(Ljavafx/scene/media/Media;)Lcom/sun/media/jfxmedia/MetadataParser;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/Media$_MetadataListener;->this$0:Ljavafx/scene/media/Media;

    invoke-static {v3}, Ljavafx/scene/media/Media;->access$300(Ljavafx/scene/media/Media;)Lcom/sun/media/jfxmedia/events/MetadataListener;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sun/media/jfxmedia/MetadataParser;->removeListener(Lcom/sun/media/jfxmedia/events/MetadataListener;)V

    .line 544
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$_MetadataListener;->this$0:Ljavafx/scene/media/Media;

    invoke-static {v2}, Ljavafx/scene/media/Media;->access$400(Ljavafx/scene/media/Media;)Lcom/sun/media/jfxmedia/MetadataParser;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/media/jfxmedia/MetadataParser;->stopParser()V

    .line 545
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$_MetadataListener;->this$0:Ljavafx/scene/media/Media;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafx/scene/media/Media;->access$402(Ljavafx/scene/media/Media;Lcom/sun/media/jfxmedia/MetadataParser;)Lcom/sun/media/jfxmedia/MetadataParser;

    move-result-object v2

    .line 546
    return-void
.end method


# virtual methods
.method public onMetadata(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$_MetadataListener;
    move-object v1, p1

    .local v1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/media/Media$_MetadataListener$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/Media$_MetadataListener;Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method
