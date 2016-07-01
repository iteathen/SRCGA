.class Ljavafx/scene/control/Tab$1;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Tab;->selectedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Tab;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Tab;)V
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Tab;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Tab$1;->this$0:Ljavafx/scene/control/Tab;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab$1;->this$0:Ljavafx/scene/control/Tab;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$1;
    const-string v1, "selected"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tab$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tab$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab$1;->this$0:Ljavafx/scene/control/Tab;

    invoke-virtual {v1}, Ljavafx/scene/control/Tab;->getOnSelectionChanged()Ljavafx/event/EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tab$1;->this$0:Ljavafx/scene/control/Tab;

    new-instance v2, Ljavafx/event/Event;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Ljavafx/scene/control/Tab;->SELECTION_CHANGED_EVENT:Ljavafx/event/EventType;

    invoke-direct {v3, v4}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v1, v2}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 211
    :cond_0
    return-void
.end method
