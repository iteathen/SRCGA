.class final Lcom/sun/javafx/css/Rule$Observables;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Observables"
.end annotation


# instance fields
.field private final declarationObservableList:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/Declaration;",
            ">;"
        }
    .end annotation
.end field

.field private final rule:Lcom/sun/javafx/css/Rule;

.field private final selectorObservableList:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sun/javafx/css/Rule;)V
    .locals 8

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule$Observables;
    move-object v1, p1

    .local v1, "rule":Lcom/sun/javafx/css/Rule;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 250
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/Rule$Observables;->rule:Lcom/sun/javafx/css/Rule;

    .line 252
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/css/Rule$Observables$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/css/Rule;->getUnobservedSelectorList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/Rule$Observables$1;-><init>(Lcom/sun/javafx/css/Rule$Observables;Ljava/util/List;)V

    iput-object v3, v2, Lcom/sun/javafx/css/Rule$Observables;->selectorObservableList:Ljavafx/collections/ObservableList;

    .line 276
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/css/Rule$Observables$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/css/Rule;->getUnobservedDeclarationList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/Rule$Observables$2;-><init>(Lcom/sun/javafx/css/Rule$Observables;Ljava/util/List;)V

    iput-object v3, v2, Lcom/sun/javafx/css/Rule$Observables;->declarationObservableList:Ljavafx/collections/ObservableList;

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/Rule;Lcom/sun/javafx/css/Rule$1;)V
    .locals 5

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule$Observables;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/Rule;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/css/Rule$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/Rule$Observables;-><init>(Lcom/sun/javafx/css/Rule;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/css/Rule$Observables;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/Rule$Observables;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/Rule$Observables;->getDeclarations()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/Rule$Observables;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/css/Rule$Observables;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/Rule$Observables;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/Rule$Observables;->getSelectors()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/Rule$Observables;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/css/Rule$Observables;)Lcom/sun/javafx/css/Rule;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/Rule$Observables;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule$Observables;->rule:Lcom/sun/javafx/css/Rule;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/Rule$Observables;
    return-object v0
.end method

.method private getDeclarations()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/Declaration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule$Observables;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule$Observables;->declarationObservableList:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Rule$Observables;
    return-object v0
.end method

.method private getSelectors()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Rule$Observables;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Rule$Observables;->selectorObservableList:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Rule$Observables;
    return-object v0
.end method
