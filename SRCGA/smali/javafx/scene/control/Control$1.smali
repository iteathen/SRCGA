.class Ljavafx/scene/control/Control$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "Control.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/control/Skin",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private oldValue:Ljavafx/scene/control/Skin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/Control;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Control;)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Control;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableObjectProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$1;
    # getter for: Ljavafx/scene/control/Control$StyleableProperties;->SKIN:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Control$StyleableProperties;->access$600()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$1;
    const-string v1, "skin"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 9

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$1;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Control$1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Skin;

    move-object v1, v3

    .line 242
    .local v1, "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    move-object v4, v1

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljavafx/scene/control/Control;->access$002(Ljavafx/scene/control/Control;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->skinClassNameProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    invoke-static {v4}, Ljavafx/scene/control/Control;->access$000(Ljavafx/scene/control/Control;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 251
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->oldValue:Ljavafx/scene/control/Skin;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->oldValue:Ljavafx/scene/control/Skin;

    invoke-interface {v3}, Ljavafx/scene/control/Skin;->dispose()V

    .line 254
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Control$1;->oldValue:Ljavafx/scene/control/Skin;

    .line 258
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/control/Control;->access$102(Ljavafx/scene/control/Control;Ljavafx/scene/control/SkinBase;)Ljavafx/scene/control/SkinBase;

    move-result-object v3

    .line 267
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/control/SkinBase;

    if-eqz v3, :cond_3

    .line 270
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/SkinBase;

    invoke-static {v3, v4}, Ljavafx/scene/control/Control;->access$102(Ljavafx/scene/control/Control;Ljavafx/scene/control/SkinBase;)Ljavafx/scene/control/SkinBase;

    move-result-object v3

    .line 290
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/control/Control;->access$502(Ljavafx/scene/control/Control;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 297
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->impl_reapplyCSS()V

    .line 300
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    move-object v2, v3

    .line 301
    .local v2, "logger":Lsun/util/logging/PlatformLogger;
    move-object v3, v2

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    move-object v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stored skin["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Control$1;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 304
    :cond_1
    return-void

    .line 242
    .end local v2    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 280
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    invoke-static {v3}, Ljavafx/scene/control/Control;->access$200(Ljavafx/scene/control/Control;)Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 281
    .local v2, "n":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_4

    .line 282
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    invoke-static {v3}, Ljavafx/scene/control/Control;->access$300(Ljavafx/scene/control/Control;)Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 284
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->this$0:Ljavafx/scene/control/Control;

    invoke-static {v3}, Ljavafx/scene/control/Control;->access$400(Ljavafx/scene/control/Control;)Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/Skin;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Control$1;->set(Ljavafx/scene/control/Skin;)V

    return-void
.end method

.method public set(Ljavafx/scene/control/Skin;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Skin",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control$1;
    move-object v1, p1

    .local v1, "v":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Control$1;->oldValue:Ljavafx/scene/control/Skin;

    if-nez v2, :cond_2

    .line 232
    .line 235
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Control$1;->oldValue:Ljavafx/scene/control/Skin;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 231
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control$1;->oldValue:Ljavafx/scene/control/Skin;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/css/StyleableObjectProperty;->set(Ljava/lang/Object;)V

    .line 235
    goto :goto_0
.end method
