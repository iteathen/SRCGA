.class public abstract Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StringConversionBidirectionalBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/BidirectionalBinding",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final otherPropertyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/Property",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final stringPropertyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method public constructor <init>(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding<TT;>;"
    move-object v1, p1

    .local v1, "stringProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "otherProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    .line 731
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->stringPropertyRef:Ljava/lang/ref/WeakReference;

    .line 732
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->otherPropertyRef:Ljava/lang/ref/WeakReference;

    .line 733
    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Object;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->updating:Z

    if-nez v8, :cond_2

    .line 752
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->stringPropertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/beans/property/Property;

    move-object v4, v8

    .line 753
    .local v4, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->otherPropertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/beans/property/Property;

    move-object v5, v8

    .line 754
    .local v5, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v8, v4

    if-eqz v8, :cond_0

    move-object v8, v5

    if-nez v8, :cond_3

    .line 755
    :cond_0
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 756
    move-object v8, v4

    move-object v9, v0

    invoke-interface {v8, v9}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 758
    :cond_1
    move-object v8, v5

    if-eqz v8, :cond_2

    .line 759
    move-object v8, v5

    move-object v9, v0

    invoke-interface {v8, v9}, Ljavafx/beans/property/Property;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 784
    .end local v4    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    .end local v5    # "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    :cond_2
    :goto_0
    return-void

    .line 763
    .restart local v4    # "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    .restart local v5    # "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    :cond_3
    move-object v8, v0

    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, v8, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->updating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    move-object v8, v4

    move-object v9, v1

    if-ne v8, v9, :cond_4

    .line 766
    move-object v8, v5

    move-object v9, v0

    move-object v10, v4

    :try_start_1
    invoke-interface {v10}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    .line 780
    :goto_1
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->updating:Z

    .line 781
    goto :goto_0

    .line 767
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 768
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v8

    const-string v9, "Exception while parsing String in bidirectional binding"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 769
    move-object v8, v5

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 770
    goto :goto_1

    .line 773
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v8, v4

    move-object v9, v0

    move-object v10, v5

    :try_start_3
    invoke-interface {v10}, Ljavafx/beans/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    goto :goto_1

    .line 774
    :catch_1
    move-exception v8

    move-object v6, v8

    .line 775
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v8

    const-string v9, "Exception while converting Object to String in bidirectional binding"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 776
    move-object v8, v4

    const-string v9, ""

    invoke-interface {v8, v9}, Ljavafx/beans/property/Property;->setValue(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 780
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->updating:Z

    move-object v8, v7

    throw v8
.end method

.method protected abstract fromString(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method protected getProperty1()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->stringPropertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding<TT;>;"
    return-object v0
.end method

.method protected getProperty2()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;->otherPropertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding;, "Lcom/sun/javafx/binding/BidirectionalBinding$StringConversionBidirectionalBinding<TT;>;"
    return-object v0
.end method

.method protected abstract toString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
