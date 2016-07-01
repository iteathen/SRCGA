.class final Lcom/sun/javafx/binding/StringFormatter$2;
.super Lcom/sun/javafx/binding/StringFormatter;
.source "StringFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/binding/StringFormatter;->concat([Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/binding/StringFormatter;-><init>()V

    .line 115
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    invoke-static {v3}, Lcom/sun/javafx/binding/StringFormatter;->access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    invoke-super {v2, v3}, Lcom/sun/javafx/binding/StringFormatter;->bind([Ljavafx/beans/Observable;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 9

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$2;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 126
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 127
    .local v5, "obj":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Lcom/sun/javafx/binding/StringFormatter;->access$100(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/binding/StringFormatter$2;
    return-object v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$2;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/sun/javafx/binding/StringFormatter;->access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v2

    invoke-super {v1, v2}, Lcom/sun/javafx/binding/StringFormatter;->unbind([Ljavafx/beans/Observable;)V

    .line 121
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/StringFormatter$2;->val$args:[Ljava/lang/Object;

    .line 136
    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    invoke-static {v1}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    .line 135
    invoke-static {v1}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/StringFormatter$2;
    return-object v0
.end method
