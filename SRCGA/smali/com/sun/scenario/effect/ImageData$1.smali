.class final Lcom/sun/scenario/effect/ImageData$1;
.super Ljava/lang/Thread;
.source "ImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/scenario/effect/ImageData;->lambda$static$32()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/ImageData$1;
    # getter for: Lcom/sun/scenario/effect/ImageData;->alldatas:Ljava/util/HashSet;
    invoke-static {}, Lcom/sun/scenario/effect/ImageData;->access$000()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .line 57
    .local v1, "datas":Ljava/util/Iterator;
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/scenario/effect/ImageData;

    move-object v2, v4

    .line 59
    .local v2, "id":Lcom/sun/scenario/effect/ImageData;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v4

    move-object v3, v4

    .line 60
    .local v3, "r":Lcom/sun/javafx/geom/Rectangle;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", refcount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-static {v6}, Lcom/sun/scenario/effect/ImageData;->access$100(Lcom/sun/scenario/effect/ImageData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] leaked from:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/scenario/effect/ImageData;->access$200(Lcom/sun/scenario/effect/ImageData;)Ljava/lang/Throwable;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 62
    goto :goto_0

    .line 63
    .end local v2    # "id":Lcom/sun/scenario/effect/ImageData;
    .end local v3    # "r":Lcom/sun/javafx/geom/Rectangle;
    :cond_0
    return-void
.end method
