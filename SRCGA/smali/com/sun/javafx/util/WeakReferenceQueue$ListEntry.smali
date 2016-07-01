.class Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
.super Ljava/lang/ref/WeakReference;
.source "WeakReferenceQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/util/WeakReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListEntry"
.end annotation


# instance fields
.field next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

.field prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "queue":Ljava/lang/ref/ReferenceQueue;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 136
    move-object v3, v0

    move-object v4, v0

    iput-object v4, v3, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 137
    move-object v3, v0

    move-object v4, v0

    iput-object v4, v3, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 138
    return-void
.end method


# virtual methods
.method public insert(Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    move-object v1, p1

    .local v1, "where":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 142
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 143
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 144
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v3, v0

    iput-object v3, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 145
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    iput-object v2, v1, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 149
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    iput-object v2, v1, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 150
    move-object v1, v0

    move-object v2, v0

    iput-object v2, v1, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->next:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 151
    move-object v1, v0

    move-object v2, v0

    iput-object v2, v1, Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;->prev:Lcom/sun/javafx/util/WeakReferenceQueue$ListEntry;

    .line 152
    return-void
.end method
