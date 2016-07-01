.class public Lcom/sun/javafx/binding/SelectBinding$AsDouble;
.super Ljavafx/beans/binding/DoubleBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsDouble"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:D


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsDouble;
    move-object v1, p1

    .local v1, "root":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "steps":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/DoubleBinding;-><init>()V

    .line 175
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;Lcom/sun/javafx/binding/SelectBinding$1;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 176
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsDouble;
    move-object v1, p1

    .local v1, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v2, p2

    .local v2, "steps":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/DoubleBinding;-><init>()V

    .line 171
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;Lcom/sun/javafx/binding/SelectBinding$1;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 172
    return-void
.end method


# virtual methods
.method protected computeValue()D
    .locals 7

    .prologue
    .line 190
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/SelectBinding$AsDouble;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v4}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v4

    move-object v2, v4

    .line 191
    .local v2, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v4, v2

    if-nez v4, :cond_0

    .line 192
    const-wide/16 v4, 0x0

    move-wide v1, v4

    .line 204
    .end local v1    # "this":Lcom/sun/javafx/binding/SelectBinding$AsDouble;
    :goto_0
    return-wide v1

    .line 194
    .restart local v1    # "this":Lcom/sun/javafx/binding/SelectBinding$AsDouble;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/beans/value/ObservableNumberValue;

    if-eqz v4, :cond_1

    .line 195
    move-object v4, v2

    check-cast v4, Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v4}, Ljavafx/beans/value/ObservableNumberValue;->doubleValue()D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0

    .line 198
    :cond_1
    move-object v4, v2

    :try_start_0
    invoke-interface {v4}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0

    .line 199
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 200
    .local v3, "ex":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "Value of select binding is null, returning default value"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :goto_1
    const-wide/16 v4, 0x0

    move-wide v1, v4

    goto :goto_0

    .line 201
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 202
    .local v3, "ex":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "Exception while evaluating select-binding"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsDouble;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->access$200(Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;)V

    .line 181
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
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsDouble;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsDouble;
    return-object v0
.end method

.method protected onInvalidating()V
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsDouble;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsDouble;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->access$200(Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;)V

    .line 186
    return-void
.end method
