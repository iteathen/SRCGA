.class public Ljavafx/beans/property/SimpleMapProperty;
.super Ljavafx/beans/property/MapPropertyBase;
.source "SimpleMapProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/MapPropertyBase",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BEAN:Ljava/lang/Object;

.field private static final DEFAULT_NAME:Ljava/lang/String; = ""


# instance fields
.field private final bean:Ljava/lang/Object;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Ljavafx/beans/property/SimpleMapProperty;->DEFAULT_BEAN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleMapProperty;, "Ljavafx/beans/property/SimpleMapProperty<TK;TV;>;"
    move-object v1, v0

    sget-object v2, Ljavafx/beans/property/SimpleMapProperty;->DEFAULT_BEAN:Ljava/lang/Object;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Ljavafx/beans/property/SimpleMapProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleMapProperty;, "Ljavafx/beans/property/SimpleMapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/MapPropertyBase;-><init>()V

    .line 90
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/SimpleMapProperty;->bean:Ljava/lang/Object;

    .line 91
    move-object v3, v0

    move-object v4, v2

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    iput-object v4, v3, Ljavafx/beans/property/SimpleMapProperty;->name:Ljava/lang/String;

    .line 92
    return-void

    .line 91
    :cond_0
    move-object v4, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljavafx/collections/ObservableMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleMapProperty;, "Ljavafx/beans/property/SimpleMapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljavafx/beans/property/MapPropertyBase;-><init>(Ljavafx/collections/ObservableMap;)V

    .line 106
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/property/SimpleMapProperty;->bean:Ljava/lang/Object;

    .line 107
    move-object v4, v0

    move-object v5, v2

    if-nez v5, :cond_0

    const-string v5, ""

    :goto_0
    iput-object v5, v4, Ljavafx/beans/property/SimpleMapProperty;->name:Ljava/lang/String;

    .line 108
    return-void

    .line 107
    :cond_0
    move-object v5, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/collections/ObservableMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleMapProperty;, "Ljavafx/beans/property/SimpleMapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "initialValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    sget-object v3, Ljavafx/beans/property/SimpleMapProperty;->DEFAULT_BEAN:Ljava/lang/Object;

    const-string v4, ""

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavafx/beans/property/SimpleMapProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljavafx/collections/ObservableMap;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleMapProperty;, "Ljavafx/beans/property/SimpleMapProperty<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SimpleMapProperty;->bean:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SimpleMapProperty;, "Ljavafx/beans/property/SimpleMapProperty<TK;TV;>;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/SimpleMapProperty;, "Ljavafx/beans/property/SimpleMapProperty<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/SimpleMapProperty;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/SimpleMapProperty;, "Ljavafx/beans/property/SimpleMapProperty<TK;TV;>;"
    return-object v0
.end method
