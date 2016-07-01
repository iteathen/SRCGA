.class Ljavafx/scene/control/Alert$1;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "Alert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/control/Alert$AlertType;",
        ">;"
    }
.end annotation


# instance fields
.field final styleClasses:[Ljava/lang/String;

.field final synthetic this$0:Ljavafx/scene/control/Alert;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Alert;Ljavafx/scene/control/Alert$AlertType;)V
    .locals 9

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Alert;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/control/Alert$AlertType;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 283
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "information"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-string v7, "warning"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    const-string v7, "error"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    const-string v7, "confirmation"

    aput-object v7, v5, v6

    iput-object v4, v3, Ljavafx/scene/control/Alert$1;->styleClasses:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 12

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Alert$1;
    const-string v7, ""

    move-object v1, v7

    .line 287
    .local v1, "newTitle":Ljava/lang/String;
    const-string v7, ""

    move-object v2, v7

    .line 289
    .local v2, "newHeader":Ljava/lang/String;
    const-string v7, ""

    move-object v3, v7

    .line 290
    .local v3, "styleClass":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljavafx/scene/control/ButtonType;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    sget-object v10, Ljavafx/scene/control/ButtonType;->OK:Ljavafx/scene/control/ButtonType;

    aput-object v10, v8, v9

    move-object v4, v7

    .line 291
    .local v4, "newButtons":[Ljavafx/scene/control/ButtonType;
    sget-object v7, Ljavafx/scene/control/Alert$2;->$SwitchMap$javafx$scene$control$Alert$AlertType:[I

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    invoke-virtual {v8}, Ljavafx/scene/control/Alert;->getAlertType()Ljavafx/scene/control/Alert$AlertType;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/Alert$AlertType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 323
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljavafx/scene/control/Alert;->access$002(Ljavafx/scene/control/Alert;Z)Z

    move-result v7

    .line 324
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    invoke-static {v7}, Ljavafx/scene/control/Alert;->access$100(Ljavafx/scene/control/Alert;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/control/Alert;->setTitle(Ljava/lang/String;)V

    .line 325
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    invoke-static {v7}, Ljavafx/scene/control/Alert;->access$200(Ljavafx/scene/control/Alert;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/scene/control/Alert;->setHeaderText(Ljava/lang/String;)V

    .line 326
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    invoke-static {v7}, Ljavafx/scene/control/Alert;->access$300(Ljavafx/scene/control/Alert;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    invoke-virtual {v7}, Ljavafx/scene/control/Alert;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    .line 330
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    invoke-virtual {v7}, Ljavafx/scene/control/Alert;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v7

    move-object v5, v7

    .line 331
    .local v5, "dialogPane":Ljavafx/scene/control/DialogPane;
    move-object v7, v5

    if-eqz v7, :cond_3

    .line 332
    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/Alert$1;->styleClasses:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v6, v7

    .line 333
    .local v6, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v7, v6

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 334
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v7

    .line 335
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 336
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 340
    .end local v6    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/Alert$1;->this$0:Ljavafx/scene/control/Alert;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljavafx/scene/control/Alert;->access$002(Ljavafx/scene/control/Alert;Z)Z

    move-result v7

    .line 341
    return-void

    .line 293
    .end local v5    # "dialogPane":Ljavafx/scene/control/DialogPane;
    :pswitch_0
    const/4 v7, 0x0

    new-array v7, v7, [Ljavafx/scene/control/ButtonType;

    move-object v4, v7

    .line 294
    goto/16 :goto_0

    .line 297
    :pswitch_1
    const-string v7, "Dialog.info.title"

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 298
    const-string v7, "Dialog.info.header"

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 299
    const-string v7, "information"

    move-object v3, v7

    .line 300
    goto/16 :goto_0

    .line 303
    :pswitch_2
    const-string v7, "Dialog.warning.title"

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 304
    const-string v7, "Dialog.warning.header"

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 305
    const-string v7, "warning"

    move-object v3, v7

    .line 306
    goto/16 :goto_0

    .line 309
    :pswitch_3
    const-string v7, "Dialog.error.title"

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 310
    const-string v7, "Dialog.error.header"

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 311
    const-string v7, "error"

    move-object v3, v7

    .line 312
    goto/16 :goto_0

    .line 315
    :pswitch_4
    const-string v7, "Dialog.confirm.title"

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 316
    const-string v7, "Dialog.confirm.header"

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 317
    const-string v7, "confirmation"

    move-object v3, v7

    .line 318
    const/4 v7, 0x2

    new-array v7, v7, [Ljavafx/scene/control/ButtonType;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    sget-object v10, Ljavafx/scene/control/ButtonType;->OK:Ljavafx/scene/control/ButtonType;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    sget-object v10, Ljavafx/scene/control/ButtonType;->CANCEL:Ljavafx/scene/control/ButtonType;

    aput-object v10, v8, v9

    move-object v4, v7

    goto/16 :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
