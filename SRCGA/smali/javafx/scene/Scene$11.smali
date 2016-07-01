.class Ljavafx/scene/Scene$11;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 1489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$11;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$11;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$11;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$11;->this$0:Ljavafx/scene/Scene;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/css/StyleManager;->stylesheetsChanged(Ljavafx/scene/Scene;Ljavafx/collections/ListChangeListener$Change;)V

    .line 1495
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 1496
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1497
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1498
    goto :goto_0

    .line 1502
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$11;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Parent;->impl_reapplyCSS()V

    .line 1503
    return-void
.end method
