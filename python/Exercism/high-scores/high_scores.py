class HighScores(object):
    def __init__(self, scores):
        self.scores = scores

    def latest(self):
        return self.scores[-1]

    def personal_best(self):
        return max(self.scores)

    def personal_top_three(self):
        self.scores.sort(reverse=True)

        if len(self.scores) >= 3:
            return self.scores[0:3]
        return self.scores
