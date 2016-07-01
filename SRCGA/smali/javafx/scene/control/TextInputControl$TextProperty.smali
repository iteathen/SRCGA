.class Ljavafx/scene/control/TextInputControl$TextProperty;
.super Ljavafx/beans/property/StringProperty;
.source "TextInputControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextInputControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TextInputControl$TextProperty$Listener;
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Ljavafx/beans/InvalidationListener;

.field private observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textIsNull:Z

.field final synthetic this$0:Ljavafx/scene/control/TextInputControl;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/TextInputControl;)V
    .locals 4

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringProperty;-><init>()V

    .line 1302
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 1304
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->listener:Ljavafx/beans/InvalidationListener;

    .line 1306
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 1311
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->textIsNull:Z

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/control/TextInputControl$1;)V
    .locals 5

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/control/TextInputControl;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/control/TextInputControl$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/TextInputControl$TextProperty;-><init>(Ljavafx/scene/control/TextInputControl;)V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/control/TextInputControl$TextProperty;)Ljavafx/beans/value/ObservableValue;
    .locals 2

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextInputControl$TextProperty;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/control/TextInputControl$TextProperty;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TextInputControl$TextProperty;->doSet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Ljavafx/scene/control/TextInputControl$TextProperty;Z)Z
    .locals 7

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl$TextProperty;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/TextInputControl$TextProperty;->textIsNull:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/TextInputControl$TextProperty;
    return v0
.end method

.method static synthetic access$1600(Ljavafx/scene/control/TextInputControl$TextProperty;)V
    .locals 2

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextInputControl$TextProperty;->controlContentHasChanged()V

    return-void
.end method

.method private controlContentHasChanged()V
    .locals 3

    .prologue
    .line 1332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextInputControl$TextProperty;->markInvalid()V

    .line 1333
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextInputControl;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 1334
    return-void
.end method

.method private doSet(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->textIsNull:Z

    .line 1408
    move-object v2, v1

    if-nez v2, :cond_0

    const-string v2, ""

    move-object v1, v2

    .line 1410
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/TextInputControl;->access$900(Ljavafx/scene/control/TextInputControl;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1423
    :goto_1
    return-void

    .line 1407
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1412
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1413
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextFormatter;->updateValue(Ljava/lang/String;)V

    .line 1416
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl;->textUpdated()V

    .line 1422
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-static {v2}, Ljavafx/scene/control/TextInputControl;->access$1000(Ljavafx/scene/control/TextInputControl;)V

    .line 1423
    goto :goto_1
.end method

.method private fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 1389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 1390
    return-void
.end method

.method private markInvalid()V
    .locals 2

    .prologue
    .line 1393
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextInputControl$TextProperty;->fireValueChangedEvent()V

    .line 1394
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 1365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 1366
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1373
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 1374
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/String;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 1338
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Cannot bind to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1340
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1341
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl$TextProperty;->unbind()V

    .line 1342
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 1343
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->listener:Ljavafx/beans/InvalidationListener;

    if-nez v2, :cond_1

    .line 1344
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/TextInputControl$TextProperty$Listener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/TextInputControl$TextProperty$Listener;-><init>(Ljavafx/scene/control/TextInputControl$TextProperty;Ljavafx/scene/control/TextInputControl$1;)V

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->listener:Ljavafx/beans/InvalidationListener;

    .line 1346
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl$TextProperty;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1347
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TextInputControl$TextProperty;->markInvalid()V

    .line 1348
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljavafx/scene/control/TextInputControl$TextProperty;->doSet(Ljava/lang/String;)V

    .line 1350
    :cond_2
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl$TextProperty;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->textIsNull:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-static {v1}, Ljavafx/scene/control/TextInputControl;->access$700(Ljavafx/scene/control/TextInputControl;)Ljavafx/scene/control/TextInputControl$Content;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/scene/control/TextInputControl$Content;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    const-string v1, "text"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 1361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 1369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 1370
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1377
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 1378
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextInputControl$TextProperty;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextInputControl$TextProperty;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1321
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "A bound value cannot be set."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1323
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TextInputControl$TextProperty;->doSet(Ljava/lang/String;)V

    .line 1324
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TextInputControl$TextProperty;->markInvalid()V

    .line 1325
    return-void
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 1353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$TextProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    .line 1354
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextInputControl$TextProperty;->doSet(Ljava/lang/String;)V

    .line 1355
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$TextProperty;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 1356
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/TextInputControl$TextProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 1358
    :cond_0
    return-void
.end method
