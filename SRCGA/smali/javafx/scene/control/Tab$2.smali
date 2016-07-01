.class Ljavafx/scene/control/Tab$2;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Tab;->tabPanePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/TabPane;",
        ">;"
    }
.end annotation


# instance fields
.field private oldParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TabPane;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/Tab;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Tab;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Tab;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/Tab$2;->this$0:Ljavafx/scene/control/Tab;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 7

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$2;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tab$2;->oldParent:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tab$2;->oldParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 254
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tab$2;->oldParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TabPane;

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->disabledProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Tab$2;->this$0:Ljavafx/scene/control/Tab;

    invoke-static {v3}, Ljavafx/scene/control/Tab;->access$000(Ljavafx/scene/control/Tab;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 256
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tab$2;->this$0:Ljavafx/scene/control/Tab;

    invoke-static {v2}, Ljavafx/scene/control/Tab;->access$100(Ljavafx/scene/control/Tab;)V

    .line 257
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Tab$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TabPane;

    move-object v1, v2

    .line 258
    .local v1, "newParent":Ljavafx/scene/control/TabPane;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 259
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->disabledProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Tab$2;->this$0:Ljavafx/scene/control/Tab;

    invoke-static {v3}, Ljavafx/scene/control/Tab;->access$000(Ljavafx/scene/control/Tab;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 261
    :cond_1
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/Tab$2;->oldParent:Ljava/lang/ref/WeakReference;

    .line 262
    move-object v2, v0

    invoke-super {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->invalidated()V

    .line 263
    return-void
.end method
