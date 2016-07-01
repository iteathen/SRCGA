.class public Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
.super Ljavafx/beans/binding/BooleanBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsBoolean"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Z


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
    move-object v1, p1

    .local v1, "root":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "steps":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 124
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

    iput-object v4, v3, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 125
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
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
    move-object v1, p1

    .local v1, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v2, p2

    .local v2, "steps":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 120
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

    iput-object v4, v3, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 121
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v3}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    move-object v1, v3

    .line 140
    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 141
    const/4 v3, 0x0

    move v0, v3

    .line 153
    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
    :goto_0
    return v0

    .line 143
    .restart local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableBooleanValue;

    if-eqz v3, :cond_1

    .line 144
    move-object v3, v1

    check-cast v3, Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 147
    :cond_1
    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v0, v3

    goto :goto_0

    .line 148
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 149
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Value of select binding is null, returning default value"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 150
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 151
    .local v2, "ex":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Value of select-binding has wrong type, returning default value."

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->access$200(Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;)V

    .line 130
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
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
    return-object v0
.end method

.method protected onInvalidating()V
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsBoolean;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->access$200(Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;)V

    .line 135
    return-void
.end method
