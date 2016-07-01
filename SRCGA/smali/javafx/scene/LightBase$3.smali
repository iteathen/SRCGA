.class Ljavafx/scene/LightBase$3;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "LightBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/LightBase;->getScope()Ljavafx/collections/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/LightBase;


# direct methods
.method constructor <init>(Ljavafx/scene/LightBase;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/LightBase;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/LightBase$3;->this$0:Ljavafx/scene/LightBase;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase$3;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/Node;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/LightBase$3;->this$0:Ljavafx/scene/LightBase;

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT_SCOPE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/LightBase;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 164
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 165
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 167
    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/Parent;

    if-nez v4, :cond_0

    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/shape/Shape3D;

    if-eqz v4, :cond_1

    .line 168
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/LightBase$3;->this$0:Ljavafx/scene/LightBase;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/scene/LightBase;->access$000(Ljavafx/scene/LightBase;Ljavafx/scene/Node;)V

    .line 170
    :cond_1
    goto :goto_1

    .line 171
    .end local v3    # "node":Ljavafx/scene/Node;
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 172
    .restart local v3    # "node":Ljavafx/scene/Node;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/Parent;

    if-nez v4, :cond_3

    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/shape/Shape3D;

    if-eqz v4, :cond_4

    .line 173
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/LightBase$3;->this$0:Ljavafx/scene/LightBase;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/scene/LightBase;->access$000(Ljavafx/scene/LightBase;Ljavafx/scene/Node;)V

    .line 175
    :cond_4
    goto :goto_2

    .end local v3    # "node":Ljavafx/scene/Node;
    :cond_5
    goto :goto_0

    .line 177
    :cond_6
    return-void
.end method
