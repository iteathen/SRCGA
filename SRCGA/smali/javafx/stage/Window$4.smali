.class Ljavafx/stage/Window$4;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/stage/Window;->onCloseRequestProperty()Ljavafx/beans/property/ObjectProperty;
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
        "Ljavafx/stage/WindowEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/stage/Window;


# direct methods
.method constructor <init>(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 662
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/Window;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Window$4;->this$0:Ljavafx/stage/Window;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$4;->this$0:Ljavafx/stage/Window;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$4;
    const-string v1, "onCloseRequest"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Window$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$4;->this$0:Ljavafx/stage/Window;

    sget-object v2, Ljavafx/stage/WindowEvent;->WINDOW_CLOSE_REQUEST:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Window$4;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/stage/Window;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 665
    return-void
.end method
