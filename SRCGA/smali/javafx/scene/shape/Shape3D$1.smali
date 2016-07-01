.class Ljavafx/scene/shape/Shape3D$1;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "Shape3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Shape3D;->materialProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/paint/Material;",
        ">;"
    }
.end annotation


# instance fields
.field private final materialChangeListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private old:Ljavafx/scene/paint/Material;

.field final synthetic this$0:Ljavafx/scene/shape/Shape3D;

.field private final weakMaterialChangeListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Shape3D;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Shape3D;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/shape/Shape3D$1;->this$0:Ljavafx/scene/shape/Shape3D;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/shape/Shape3D$1;->old:Ljavafx/scene/paint/Material;

    .line 107
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Ljavafx/scene/shape/Shape3D$1$$Lambda$1;->lambdaFactory$(Ljavafx/scene/shape/Shape3D$1;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/shape/Shape3D$1;->materialChangeListener:Ljavafx/beans/value/ChangeListener;

    .line 113
    move-object v4, v0

    new-instance v5, Ljavafx/beans/value/WeakChangeListener;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/shape/Shape3D$1;->materialChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v6, v7}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v5, v4, Ljavafx/scene/shape/Shape3D$1;->weakMaterialChangeListener:Ljavafx/beans/value/WeakChangeListener;

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/shape/Shape3D$1;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/shape/Shape3D$1;->lambda$$514(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$$514(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D$1;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/Shape3D$1;->this$0:Ljavafx/scene/shape/Shape3D;

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->MATERIAL:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v4, v5}, Ljavafx/scene/shape/Shape3D;->access$200(Ljavafx/scene/shape/Shape3D;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D$1;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape3D$1;->old:Ljavafx/scene/paint/Material;

    if-eqz v2, :cond_0

    .line 118
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape3D$1;->old:Ljavafx/scene/paint/Material;

    invoke-virtual {v2}, Ljavafx/scene/paint/Material;->impl_dirtyProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Shape3D$1;->weakMaterialChangeListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 120
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape3D$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/paint/Material;

    move-object v1, v2

    .line 121
    .local v1, "newMaterial":Ljavafx/scene/paint/Material;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 122
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/paint/Material;->impl_dirtyProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Shape3D$1;->weakMaterialChangeListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 124
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape3D$1;->this$0:Ljavafx/scene/shape/Shape3D;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MATERIAL:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v2, v3}, Ljavafx/scene/shape/Shape3D;->access$000(Ljavafx/scene/shape/Shape3D;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 125
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape3D$1;->this$0:Ljavafx/scene/shape/Shape3D;

    invoke-static {v2}, Ljavafx/scene/shape/Shape3D;->access$100(Ljavafx/scene/shape/Shape3D;)V

    .line 126
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Shape3D$1;->old:Ljavafx/scene/paint/Material;

    .line 127
    return-void
.end method
