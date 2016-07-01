.class final Lcom/sun/javafx/binding/StringFormatter$4;
.super Lcom/sun/javafx/binding/StringFormatter;
.source "StringFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/binding/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$format:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$4;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/binding/StringFormatter$4;->val$format:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/binding/StringFormatter;-><init>()V

    .line 185
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    invoke-static {v4}, Lcom/sun/javafx/binding/StringFormatter;->access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v4

    invoke-super {v3, v4}, Lcom/sun/javafx/binding/StringFormatter;->bind([Ljavafx/beans/Observable;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$4;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/sun/javafx/binding/StringFormatter;->access$200([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 196
    .local v1, "values":[Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/StringFormatter$4;->val$format:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/StringFormatter$4;
    return-object v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$4;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/sun/javafx/binding/StringFormatter;->access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v2

    invoke-super {v1, v2}, Lcom/sun/javafx/binding/StringFormatter;->unbind([Ljavafx/beans/Observable;)V

    .line 191
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
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$4;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/StringFormatter$4;->val$args:[Ljava/lang/Object;

    .line 203
    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    invoke-static {v1}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    .line 202
    invoke-static {v1}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/StringFormatter$4;
    return-object v0
.end method
