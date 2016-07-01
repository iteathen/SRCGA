.class Ljavafx/scene/control/Label$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Label;->labelForProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field oldValue:Ljavafx/scene/Node;

.field final synthetic this$0:Ljavafx/scene/control/Label;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Label;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Label;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Label$1;->this$0:Ljavafx/scene/control/Label;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 116
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Label$1;->oldValue:Ljavafx/scene/Node;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Label$1;->this$0:Ljavafx/scene/control/Label;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Label$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label$1;
    const-string v1, "labelFor"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Label$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Label$1;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Label$1;->oldValue:Ljavafx/scene/Node;

    if-eqz v2, :cond_0

    .line 119
    invoke-static {}, Lcom/sun/javafx/scene/NodeHelper;->getNodeAccessor()Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Label$1;->oldValue:Ljavafx/scene/Node;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;->setLabeledBy(Ljavafx/scene/Node;Ljavafx/scene/Node;)V

    .line 120
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Label$1;->oldValue:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_showMnemonicsProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Label$1;->this$0:Ljavafx/scene/control/Label;

    invoke-static {v3}, Ljavafx/scene/control/Label;->access$000(Ljavafx/scene/control/Label;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 122
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Label$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    move-object v1, v2

    .line 123
    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 124
    invoke-static {}, Lcom/sun/javafx/scene/NodeHelper;->getNodeAccessor()Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Label$1;->this$0:Ljavafx/scene/control/Label;

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;->setLabeledBy(Ljavafx/scene/Node;Ljavafx/scene/Node;)V

    .line 125
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_showMnemonicsProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Label$1;->this$0:Ljavafx/scene/control/Label;

    invoke-static {v3}, Ljavafx/scene/control/Label;->access$000(Ljavafx/scene/control/Label;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Label$1;->this$0:Ljavafx/scene/control/Label;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->impl_isShowMnemonics()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->impl_setShowMnemonics(Z)V

    .line 130
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Label$1;->oldValue:Ljavafx/scene/Node;

    .line 131
    return-void

    .line 128
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Label$1;->this$0:Ljavafx/scene/control/Label;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Label;->impl_setShowMnemonics(Z)V

    goto :goto_0
.end method
