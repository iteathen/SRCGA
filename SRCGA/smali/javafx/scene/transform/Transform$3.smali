.class Ljavafx/scene/transform/Transform$3;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/transform/Transform;->onTransformChangedProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/event/EventHandler",
        "<-",
        "Ljavafx/scene/transform/TransformChangedEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/transform/Transform;


# direct methods
.method constructor <init>(Ljavafx/scene/transform/Transform;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1936
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/transform/Transform;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/transform/Transform$3;->this$0:Ljavafx/scene/transform/Transform;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 1939
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/transform/Transform$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/transform/Transform$3;->this$0:Ljavafx/scene/transform/Transform;

    invoke-static {v1}, Ljavafx/scene/transform/Transform;->access$100(Ljavafx/scene/transform/Transform;)Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v1

    sget-object v2, Ljavafx/scene/transform/TransformChangedEvent;->TRANSFORM_CHANGED:Ljavafx/event/EventType;

    move-object v3, v0

    .line 1940
    invoke-virtual {v3}, Ljavafx/scene/transform/Transform$3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    .line 1939
    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1941
    return-void
.end method
