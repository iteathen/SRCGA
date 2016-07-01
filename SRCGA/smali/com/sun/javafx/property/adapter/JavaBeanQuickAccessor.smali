.class public final Lcom/sun/javafx/property/adapter/JavaBeanQuickAccessor;
.super Ljava/lang/Object;
.source "JavaBeanQuickAccessor.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/JavaBeanQuickAccessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static createReadOnlyJavaBeanObjectProperty(Ljava/lang/Object;Ljava/lang/String;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "bean":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->create()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->bean(Ljava/lang/Object;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->name(Ljava/lang/String;)Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectPropertyBuilder;->build()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanObjectProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "bean":Ljava/lang/Object;
    return-object v0
.end method
