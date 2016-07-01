.class Ljavafx/scene/Scene$13;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
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
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 2059
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$13;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/Scene$13;->this$0:Ljavafx/scene/Scene;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 8

    .prologue
    .line 2063
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$13;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$13;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$2000(Ljavafx/scene/Scene;)Ljavafx/scene/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2064
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$13;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$2000(Ljavafx/scene/Scene;)Ljavafx/scene/Node;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node$FocusedProperty;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/Node$FocusedProperty;->store(Z)V

    .line 2066
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Scene$13;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v1, v4

    .line 2067
    .local v1, "value":Ljavafx/scene/Node;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 2068
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node$FocusedProperty;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$13;->this$0:Ljavafx/scene/Scene;

    invoke-static {v5}, Ljavafx/scene/Scene;->access$2100(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$KeyHandler;

    move-result-object v5

    invoke-static {v5}, Ljavafx/scene/Scene$KeyHandler;->access$2200(Ljavafx/scene/Scene$KeyHandler;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/Node$FocusedProperty;->store(Z)V

    .line 2069
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$13;->this$0:Ljavafx/scene/Scene;

    invoke-static {v5}, Ljavafx/scene/Scene;->access$2000(Ljavafx/scene/Scene;)Ljavafx/scene/Node;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 2070
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v5, v1

    .line 2071
    invoke-virtual {v5}, Ljavafx/scene/Node;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v5, v1

    .line 2072
    invoke-virtual {v5}, Ljavafx/scene/Node;->getOnInputMethodTextChanged()Ljavafx/event/EventHandler;

    move-result-object v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    .line 2070
    :goto_0
    invoke-virtual {v4, v5}, Ljavafx/scene/Scene;->impl_enableInputMethodEvents(Z)V

    .line 2078
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$13;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$2000(Ljavafx/scene/Scene;)Ljavafx/scene/Node;

    move-result-object v4

    move-object v2, v4

    .line 2079
    .local v2, "localOldOwner":Ljavafx/scene/Node;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$13;->this$0:Ljavafx/scene/Scene;

    move-object v5, v1

    invoke-static {v4, v5}, Ljavafx/scene/Scene;->access$2002(Ljavafx/scene/Scene;Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v4

    .line 2080
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 2081
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node$FocusedProperty;

    invoke-virtual {v4}, Ljavafx/scene/Node$FocusedProperty;->notifyListeners()V

    .line 2083
    :cond_2
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 2084
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node$FocusedProperty;

    invoke-virtual {v4}, Ljavafx/scene/Node$FocusedProperty;->notifyListeners()V

    .line 2086
    :cond_3
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getFocusLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    move-object v3, v4

    .line 2087
    .local v3, "logger":Lsun/util/logging/PlatformLogger;
    move-object v4, v3

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2088
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Scene$13;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_7

    .line 2089
    move-object v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changed focus from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 2097
    :cond_4
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$13;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$2300(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2098
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$13;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$2300(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v4

    sget-object v5, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/Accessible;->sendNotification(Ljavafx/scene/AccessibleAttribute;)V

    .line 2100
    :cond_5
    return-void

    .line 2072
    .end local v2    # "localOldOwner":Ljavafx/scene/Node;
    .end local v3    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 2092
    .restart local v2    # "localOldOwner":Ljavafx/scene/Node;
    .restart local v3    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_7
    move-object v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changing focus from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " canceled by nested requestFocus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method
