.class Ljavafx/scene/media/Media$InitLocator;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitLocator"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/Media;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/Media;)V
    .locals 4

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$InitLocator;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/Media$InitLocator;->this$0:Ljavafx/scene/media/Media;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/Media;Ljavafx/scene/media/Media$1;)V
    .locals 5

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$InitLocator;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/Media;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/Media$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/Media$InitLocator;-><init>(Ljavafx/scene/media/Media;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Media$InitLocator;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/scene/media/Media$InitLocator;->this$0:Ljavafx/scene/media/Media;

    invoke-static {v2}, Ljavafx/scene/media/Media;->access$500(Ljavafx/scene/media/Media;)Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/locator/Locator;->init()V

    .line 556
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$InitLocator;->this$0:Ljavafx/scene/media/Media;

    invoke-static {v2}, Ljavafx/scene/media/Media;->access$600(Ljavafx/scene/media/Media;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 567
    .line 568
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 558
    .local v1, "use":Ljava/net/URISyntaxException;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$InitLocator;->this$0:Ljavafx/scene/media/Media;

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->OPERATION_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/media/Media;->_setError(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    .line 567
    goto :goto_0

    .line 559
    .end local v1    # "use":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 560
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$InitLocator;->this$0:Ljavafx/scene/media/Media;

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNAVAILABLE:Ljavafx/scene/media/MediaException$Type;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/media/Media;->_setError(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    .line 567
    goto :goto_0

    .line 561
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 562
    .local v1, "ioe":Ljava/io/IOException;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$InitLocator;->this$0:Ljavafx/scene/media/Media;

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_INACCESSIBLE:Ljavafx/scene/media/MediaException$Type;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/media/Media;->_setError(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    .line 567
    goto :goto_0

    .line 563
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v1, v2

    .line 564
    .local v1, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$InitLocator;->this$0:Ljavafx/scene/media/Media;

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/MediaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/media/Media;->_setError(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    .line 567
    goto :goto_0

    .line 565
    .end local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    :catch_4
    move-exception v2

    move-object v1, v2

    .line 566
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/Media$InitLocator;->this$0:Ljavafx/scene/media/Media;

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->UNKNOWN:Ljavafx/scene/media/MediaException$Type;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/media/Media;->_setError(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    goto :goto_0
.end method
