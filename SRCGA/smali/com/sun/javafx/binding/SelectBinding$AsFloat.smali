.class public Lcom/sun/javafx/binding/SelectBinding$AsFloat;
.super Ljavafx/beans/binding/FloatBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsFloat"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:F


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsFloat;
    move-object v1, p1

    .local v1, "root":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "steps":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/FloatBinding;-><init>()V

    .line 226
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

    iput-object v4, v3, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 227
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
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsFloat;
    move-object v1, p1

    .local v1, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v2, p2

    .local v2, "steps":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/FloatBinding;-><init>()V

    .line 222
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

    iput-object v4, v3, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 223
    return-void
.end method


# virtual methods
.method protected computeValue()F
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsFloat;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v3}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    move-object v1, v3

    .line 242
    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 243
    const/4 v3, 0x0

    move v0, v3

    .line 255
    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsFloat;
    :goto_0
    return v0

    .line 245
    .restart local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsFloat;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableNumberValue;

    if-eqz v3, :cond_1

    .line 246
    move-object v3, v1

    check-cast v3, Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableNumberValue;->floatValue()F

    move-result v3

    move v0, v3

    goto :goto_0

    .line 249
    :cond_1
    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v0, v3

    goto :goto_0

    .line 250
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 251
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Value of select binding is null, returning default value"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 252
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 253
    .local v2, "ex":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Exception while evaluating select-binding"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsFloat;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->access$200(Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;)V

    .line 232
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
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsFloat;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsFloat;
    return-object v0
.end method

.method protected onInvalidating()V
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsFloat;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsFloat;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->access$200(Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;)V

    .line 237
    return-void
.end method
