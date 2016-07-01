.class Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
.super Ljavafx/beans/property/ReadOnlyStringProperty;
.source "ReadOnlyStringWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/property/ReadOnlyStringWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyPropertyImpl"
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

.field final synthetic this$0:Ljavafx/beans/property/ReadOnlyStringWrapper;


# direct methods
.method private constructor <init>(Ljavafx/beans/property/ReadOnlyStringWrapper;)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyStringWrapper;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyStringProperty;-><init>()V

    .line 150
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/property/ReadOnlyStringWrapper;Ljavafx/beans/property/ReadOnlyStringWrapper$1;)V
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/property/ReadOnlyStringWrapper;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/property/ReadOnlyStringWrapper$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;-><init>(Ljavafx/beans/property/ReadOnlyStringWrapper;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 160
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
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 170
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 179
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->getBean()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->this$0:Ljavafx/beans/property/ReadOnlyStringWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyStringWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    return-object v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 165
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
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyStringWrapper$ReadOnlyPropertyImpl;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 175
    return-void
.end method
