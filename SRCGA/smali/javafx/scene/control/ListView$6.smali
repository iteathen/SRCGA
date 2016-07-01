.class Ljavafx/scene/control/ListView$6;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ListView;->onScrollToProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/control/ScrollToEvent",
        "<",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ListView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ListView;)V
    .locals 4

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$6;, "Ljavafx/scene/control/ListView$6;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ListView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListView$6;->this$0:Ljavafx/scene/control/ListView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$6;, "Ljavafx/scene/control/ListView$6;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView$6;->this$0:Ljavafx/scene/control/ListView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$6;, "Ljavafx/scene/control/ListView$6;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 942
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$6;, "Ljavafx/scene/control/ListView$6;"
    const-string v1, "onScrollTo"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$6;, "Ljavafx/scene/control/ListView$6;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 934
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$6;, "Ljavafx/scene/control/ListView$6;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView$6;->this$0:Ljavafx/scene/control/ListView;

    invoke-static {}, Ljavafx/scene/control/ScrollToEvent;->scrollToTopIndex()Ljavafx/event/EventType;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ListView$6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/ListView;->access$700(Ljavafx/scene/control/ListView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 935
    return-void
.end method
