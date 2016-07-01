.class final Lcom/sun/javafx/binding/StringFormatter$3;
.super Lcom/sun/javafx/binding/StringFormatter;
.source "StringFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/binding/StringFormatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$format:Ljava/lang/String;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$3;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/binding/StringFormatter$3;->val$args:[Ljava/lang/Object;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/binding/StringFormatter$3;->val$locale:Ljava/util/Locale;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/binding/StringFormatter$3;->val$format:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/binding/StringFormatter;-><init>()V

    .line 150
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/StringFormatter$3;->val$args:[Ljava/lang/Object;

    invoke-static {v5}, Lcom/sun/javafx/binding/StringFormatter;->access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v5

    invoke-super {v4, v5}, Lcom/sun/javafx/binding/StringFormatter;->bind([Ljavafx/beans/Observable;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$3;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/StringFormatter$3;->val$args:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/sun/javafx/binding/StringFormatter;->access$200([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 161
    .local v1, "values":[Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/StringFormatter$3;->val$locale:Ljava/util/Locale;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/StringFormatter$3;->val$format:Ljava/lang/String;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/StringFormatter$3;
    return-object v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$3;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/StringFormatter$3;->val$args:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/sun/javafx/binding/StringFormatter;->access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v2

    invoke-super {v1, v2}, Lcom/sun/javafx/binding/StringFormatter;->unbind([Ljavafx/beans/Observable;)V

    .line 156
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
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/StringFormatter$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/StringFormatter$3;->val$args:[Ljava/lang/Object;

    .line 168
    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->access$000([Ljava/lang/Object;)[Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    invoke-static {v1}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    .line 167
    invoke-static {v1}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/StringFormatter$3;
    return-object v0
.end method
