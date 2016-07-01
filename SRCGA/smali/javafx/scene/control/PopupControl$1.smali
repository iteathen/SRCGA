.class Ljavafx/scene/control/PopupControl$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "PopupControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/PopupControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
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

.field final synthetic this$0:Ljavafx/scene/control/PopupControl;


# direct methods
.method constructor <init>(Ljavafx/scene/control/PopupControl;)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/PopupControl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$1;
    const-string v1, "skin"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 11

    .prologue
    .line 236
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl$1;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/PopupControl$1;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Skin;

    move-object v2, v5

    .line 241
    .local v2, "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    move-object v6, v2

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_0
    invoke-static {v5, v6}, Ljavafx/scene/control/PopupControl;->access$002(Ljavafx/scene/control/PopupControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 246
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-static {v5}, Ljavafx/scene/control/PopupControl;->access$100(Ljavafx/scene/control/PopupControl;)Ljavafx/beans/property/StringProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-static {v6}, Ljavafx/scene/control/PopupControl;->access$000(Ljavafx/scene/control/PopupControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 250
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->oldValue:Ljavafx/scene/control/Skin;

    if-eqz v5, :cond_0

    .line 251
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->oldValue:Ljavafx/scene/control/Skin;

    invoke-interface {v5}, Ljavafx/scene/control/Skin;->dispose()V

    .line 255
    :cond_0
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl$1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Skin;

    iput-object v6, v5, Ljavafx/scene/control/PopupControl$1;->oldValue:Ljavafx/scene/control/Skin;

    .line 257
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->access$202(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v5

    .line 258
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->access$302(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v5

    .line 259
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->access$402(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v5

    .line 260
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->access$502(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v5

    .line 261
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->access$602(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v5

    .line 262
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->access$702(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v5

    .line 263
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljavafx/scene/control/PopupControl;->access$802(Ljavafx/scene/control/PopupControl;Z)Z

    move-result v5

    .line 265
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-static {v5}, Ljavafx/scene/control/PopupControl;->access$900(Ljavafx/scene/control/PopupControl;)Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 266
    .local v3, "n":Ljavafx/scene/Node;
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 267
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    iget-object v5, v5, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v5}, Ljavafx/scene/control/PopupControl$CSSBridge;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 277
    :goto_1
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    iget-object v5, v5, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v5}, Ljavafx/scene/control/PopupControl$CSSBridge;->impl_reapplyCSS()V

    .line 280
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    move-object v4, v5

    .line 281
    .local v4, "logger":Lsun/util/logging/PlatformLogger;
    move-object v5, v4

    sget-object v6, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    move-object v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stored skin["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/PopupControl$1;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 284
    :cond_1
    return-void

    .line 241
    .end local v3    # "n":Ljavafx/scene/Node;
    .end local v4    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 269
    .restart local v3    # "n":Ljavafx/scene/Node;
    :cond_3
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/PopupControl$1;->this$0:Ljavafx/scene/control/PopupControl;

    iget-object v5, v5, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v5}, Ljavafx/scene/control/PopupControl$CSSBridge;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/Skin;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl$1;->set(Ljavafx/scene/control/Skin;)V

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
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$1;
    move-object v1, p1

    .local v1, "v":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/PopupControl$1;->oldValue:Ljavafx/scene/control/Skin;

    if-nez v2, :cond_2

    .line 229
    .line 233
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/PopupControl$1;->oldValue:Ljavafx/scene/control/Skin;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 228
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/PopupControl$1;->oldValue:Ljavafx/scene/control/Skin;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/property/ObjectPropertyBase;->set(Ljava/lang/Object;)V

    .line 233
    goto :goto_0
.end method
