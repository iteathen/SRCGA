.class final Ljavafx/scene/control/TextField$TextFieldContent;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Ljavafx/scene/control/TextInputControl$Content;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextFieldContent"
.end annotation


# instance fields
.field private characters:Ljava/lang/StringBuilder;

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


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 76
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Ljavafx/scene/control/TextField$TextFieldContent;->characters:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/control/TextField$1;)V
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/control/TextField$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TextField$TextFieldContent;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/control/TextField$TextFieldContent;)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField$TextFieldContent;->characters:Ljava/lang/StringBuilder;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextField$TextFieldContent;
    return-object v0
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 123
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
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, p1

    .local v1, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 111
    return-void
.end method

.method public delete(IIZ)V
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move v3, p3

    .local v3, "notifyListeners":Z
    move v4, v2

    move v5, v1

    if-le v4, v5, :cond_0

    .line 94
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextField$TextFieldContent;->characters:Ljava/lang/StringBuilder;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 95
    move v4, v3

    if-eqz v4, :cond_0

    .line 96
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v4}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 99
    :cond_0
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextField$TextFieldContent;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField$TextFieldContent;
    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField$TextFieldContent;->characters:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField$TextFieldContent;
    return-object v0
.end method

.method public get(II)Ljava/lang/String;
    .locals 6

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextField$TextFieldContent;->characters:Ljava/lang/StringBuilder;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TextField$TextFieldContent;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextField$TextFieldContent;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField$TextFieldContent;
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextField$TextFieldContent;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField$TextFieldContent;
    return-object v0
.end method

.method public insert(ILjava/lang/String;Z)V
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "text":Ljava/lang/String;
    move v3, p3

    .local v3, "notifyListeners":Z
    move-object v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ljavafx/scene/control/TextInputControl;->filterInput(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 84
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextField$TextFieldContent;->characters:Ljava/lang/StringBuilder;

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    move v4, v3

    if-eqz v4, :cond_0

    .line 87
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v4}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 90
    :cond_0
    return-void
.end method

.method public length()I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextField$TextFieldContent;->characters:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextField$TextFieldContent;
    return v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 127
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
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextField$TextFieldContent;
    move-object v1, p1

    .local v1, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/TextField$TextFieldContent;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 115
    return-void
.end method
