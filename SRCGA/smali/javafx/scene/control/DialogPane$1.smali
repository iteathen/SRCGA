.class Ljavafx/scene/control/DialogPane$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "DialogPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/DialogPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field graphicRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/DialogPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/DialogPane;)V
    .locals 7

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/DialogPane;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/DialogPane$1;->this$0:Ljavafx/scene/control/DialogPane;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableObjectProperty;-><init>()V

    .line 268
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/DialogPane$1;->graphicRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane$1;->this$0:Ljavafx/scene/control/DialogPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$1;
    # getter for: Ljavafx/scene/control/DialogPane$StyleableProperties;->GRAPHIC:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/DialogPane$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$1;
    const-string v1, "graphic"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 8

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane$1;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$1;->graphicRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    move-object v1, v3

    .line 272
    .local v1, "oldGraphic":Ljavafx/scene/Node;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 273
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$1;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 276
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$1;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getGraphic()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 277
    .local v2, "newGraphic":Ljavafx/scene/Node;
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/DialogPane$1;->graphicRef:Ljava/lang/ref/WeakReference;

    .line 278
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane$1;->this$0:Ljavafx/scene/control/DialogPane;

    invoke-static {v3}, Ljavafx/scene/control/DialogPane;->access$100(Ljavafx/scene/control/DialogPane;)V

    .line 279
    return-void
.end method
