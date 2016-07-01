.class Ljavafx/scene/control/Accordion$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Accordion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Accordion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/control/TitledPane;",
        ">;"
    }
.end annotation


# instance fields
.field private oldValue:Ljavafx/scene/control/TitledPane;

.field final synthetic this$0:Ljavafx/scene/control/Accordion;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Accordion;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Accordion;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Accordion$2;->this$0:Ljavafx/scene/control/Accordion;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Accordion$2;->this$0:Ljavafx/scene/control/Accordion;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Accordion$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion$2;
    const-string v1, "expandedPane"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Accordion$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Accordion$2;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Accordion$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TitledPane;

    move-object v1, v2

    .line 138
    .local v1, "value":Ljavafx/scene/control/TitledPane;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 139
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    .line 145
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Accordion$2;->oldValue:Ljavafx/scene/control/TitledPane;

    .line 146
    return-void

    .line 141
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Accordion$2;->oldValue:Ljavafx/scene/control/TitledPane;

    if-eqz v2, :cond_0

    .line 142
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Accordion$2;->oldValue:Ljavafx/scene/control/TitledPane;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    goto :goto_0
.end method
