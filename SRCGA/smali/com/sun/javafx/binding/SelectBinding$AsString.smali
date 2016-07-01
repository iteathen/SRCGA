.class public Lcom/sun/javafx/binding/SelectBinding$AsString;
.super Ljavafx/beans/binding/StringBinding;
.source "SelectBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsString"
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String;


# instance fields
.field private final helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/binding/SelectBinding$AsString;->DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsString;
    move-object v1, p1

    .local v1, "root":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "steps":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 379
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

    iput-object v4, v3, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 380
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
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsString;
    move-object v1, p1

    .local v1, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v2, p2

    .local v2, "steps":[Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 375
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

    iput-object v4, v3, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    .line 376
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsString;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v3}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getObservableValue()Ljavafx/beans/value/ObservableValue;

    move-result-object v3

    move-object v1, v3

    .line 395
    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 396
    sget-object v3, Lcom/sun/javafx/binding/SelectBinding$AsString;->DEFAULT_VALUE:Ljava/lang/String;

    move-object v0, v3

    .line 403
    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsString;
    :goto_0
    return-object v0

    .line 399
    .restart local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsString;
    :cond_0
    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 400
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 401
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Exception while evaluating select-binding"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    sget-object v3, Lcom/sun/javafx/binding/SelectBinding$AsString;->DEFAULT_VALUE:Ljava/lang/String;

    move-object v0, v3

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsString;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->access$200(Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;)V

    .line 385
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
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsString;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-virtual {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->getDependencies()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$AsString;
    return-object v0
.end method

.method protected onInvalidating()V
    .locals 2

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$AsString;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$AsString;->helper:Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->access$200(Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;)V

    .line 390
    return-void
.end method
